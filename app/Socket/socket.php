<?php

define('HOST_NAME',"localhost"); 
define('PORT',"2345");
$null = NULL;

require_once("../Model/playHandler.php");
$playHandler = new playHandler();

$socketResource = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
socket_set_option($socketResource, SOL_SOCKET, SO_REUSEADDR, 1);
echo "binding adress\n";
socket_bind($socketResource, "127.0.0.1", PORT);
echo "waiting for connections\n"; 
socket_listen($socketResource);

$clientSocketArray = array($socketResource);

$playersOnline=0;
$lastConnection=0;
$connectionBeforeThat=0;
while (true) {
	
	$newSocketArray = $clientSocketArray;
	socket_select($newSocketArray, $null, $null, 0, 10);
	if (in_array($socketResource, $newSocketArray)) {
		$playersOnline=$playersOnline+1;
		echo "player".$playersOnline." connected<br>";
		$newSocket = socket_accept($socketResource);
		$clientSocketArray[] = $newSocket;
		$header = socket_read($newSocket, 1024);
		$playHandler->doHandshake($header, $newSocket, HOST_NAME, PORT);
		socket_getpeername($newSocket, $client_ip_address);
		$connectionACK = $playHandler->newConnectionACK($client_ip_address);		
		$connectionBeforeThat=$lastConnection;
		$lastConnection=$playersOnline;
		$newSocketIndex = array_search($socketResource, $newSocketArray);
		unset($newSocketArray[$newSocketIndex]);
		
		if ($playersOnline%2==0 ){
			foreach($clientSocketArray as $newSocketArrayResource){
			echo $newSocketArrayResource."\n";
			echo "time for matchup \n";
			echo "connecting the players \n";
			$sendSocket=$newSocketArrayResource;
			$newSocketIndex = array_search( $newSocketArrayResource, $clientSocketArray);
			 echo $newSocketIndex."<br>\n"; 
			  echo $connectionBeforeThat." ".$lastConnection."\n"; 
			 if ($newSocketIndex == $connectionBeforeThat)
			 { 
				 $sendData=array('index'=>$lastConnection,'status'=>'newConnection');
				 $sendData=$playHandler->seal(json_encode( $sendData));
				$messageLength = strlen( $sendData);
				if (socket_write($sendSocket, $sendData,$messageLength)==false)
						echo "error<br>\n";
				else echo "am reusit\n";
			 }
			 if ($newSocketIndex == $lastConnection)
			 {   
				$sendData=array('index'=>$connectionBeforeThat,'status'=>'newConnection');
				$sendData=$playHandler->seal(json_encode( $sendData));
			$messageLength = strlen( $sendData);
			if (socket_write($sendSocket, $sendData,$messageLength)==false)
						echo "error<br>";
			else echo "am reusit\n";
			 }
			}
	
	}
	} 	

	foreach ($newSocketArray as $newSocketArrayResource) {
		while(socket_recv($newSocketArrayResource, $socketData, 1024, 0) >= 1){
			$socketMessage = $playHandler->unseal($socketData);
			$messageObj = json_decode($socketMessage);
			
			$chat_box_message = $playHandler->createChatBoxMessage($messageObj->chat_user, $messageObj->chat_message);
		
			break 2;
		}
		
		$socketData = @socket_read($newSocketArrayResource, 1024, PHP_NORMAL_READ);
		if ($socketData === false) { 
			socket_getpeername($newSocketArrayResource, $client_ip_address);
			$connectionACK = $playHandler->connectionDisconnectACK($client_ip_address);
			
			$newSocketIndex = array_search($newSocketArrayResource, $clientSocketArray);
			unset($clientSocketArray[$newSocketIndex]);			
		}
	}
}
socket_close($socketResource);
?>