
<?php
    function checkUsernameAvailability($nume, $conn){
        $sql = "SELECT * FROM user where username = '".$nume."'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0){
            return false;
        }
        return true;
    }

    function checkEmailAvailability($mail, $conn){
        $sql = "SELECT * FROM user where email = '".$mail."'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0){
            return false;
        }
        return true;
    }

    function addNewUser($nume, $parola, $mail, $conn){
        $sql = "Insert into user values('".$nume."','".$parola."','".$mail."',0,0,0,0)";
        echo $sql;
        mysqli_query($conn, $sql);
    }

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "sundaybrawl";
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    // Check connection
    if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    }

    
    if($_POST["password"] != $_POST["confirmPassword"]){
        die("Parolele nu se potrivesc!");
    }

    if(!checkUsernameAvailability($_POST["username"], $conn)){
        die("Numele de utilizator nu este disponibil!");
    }

    if(!checkEmailAvailability($_POST["mail"], $conn)){
        die("Email-ul nu este disponibil");
    }

    addNewUser($_POST["username"],$_POST["password"],$_POST["mail"], $conn);
    
    header("Location: ../View/Pages/dashboard.html");

?>    
</body>
</html>

