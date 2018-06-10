<!DOCTYPE html>
<?php
session_start();

switch ($_GET['q']) {
    case 1:
   echo "<a onclick=\"play()\" class=\"btn btn--play\">Searching </a>";
    exit;
    default:
}
?>
<html>
    <head>
        <link rel="stylesheet" href="../../webroot/css/styles.css">
    </head>
    <body>
        <div class="play-container">
            <div class="timer">
                <div class="meter">
                    <span style="width: 60%;"><span>Timer</span></span>
                </div>
            </div>

            <div class="game-container">
                <div class="player-container">
                    <div class="player-card">
                        <img src="" alt="profile-pic" />
                        <p class="username">PlaceholderUserName</p>
                        <p class="level">Level 30</p>
                    </div>
                    <div class="character-container">
                        <img src="" alt="character-pic" />
                        <p class="name">PlaceholderUserName</p>
                        <p class="level">Level 5</p>

                        <ul class="character__abilities">
                            <li class="abilities__item"><img src="../../webroot/img/ability1--small.png" alt="ability1"></li>
                            <li class="abilities__item"><img src="../../webroot/img/ability2--small.png" alt="ability2"></li>
                            <li class="abilities__item"><img src="../../webroot/img/ability3--small.png" alt="ability3"></li>
                            <li class="abilities__item"><img src="../../webroot/img/ability4--small.png" alt="ability4"></li>
                        </ul>   
                    </div>
                </div>
    
                <div class="player-container right">
                    <div class="player-card">
                        <img src="" alt="profile-pic" />
                        <p class="username">PlaceholderUserName</p>
                        <p class="level">Level 30</p>
                    </div>
                </div>
            </div>
            
        </div>
    </body>
</html>