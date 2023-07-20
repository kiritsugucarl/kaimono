<?php
function pdo_connect_mysql()
{
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'kaimono-shop';

    try {
        return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {
        //If there is an error with the connection, stop the script and display the error.
        exit('Failed to connect to database');
    }
}

//Main boilerplate for header
function template_header($title)
{
    echo <<< EOT
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>$title</title>
            <!--------- logo --------->
            <link rel="icon" type="image/png" href="images/kaimono-logo.png">
            <link rel="stylesheet" href="css/styles.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
            <!--------- font --------->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@500&display=swap" rel="stylesheet">
        </head>
        <body>
        <div class="container-navbar">
            <div class="navbar">
                <div class="logo">
                    <a href="index.php">KAIMONO.</a>
                </div>
            </div>
            <div class="icon">
                <a href="index.php?page=cart" class="icon-btn"><img src="https://img.icons8.com/material-outlined/96/711919/shopping-cart--v1.png"/></a>
            </div>
        </div>
        EOT;
}

//Main boilerplate for footer
function template_footer()
{
    $year = date('Y');
    echo <<< EOT
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <div class="block">
                    <p><b>KAIMONO. APP DOWNLOAD</b></p>
                        <div class="download-app-logo">
                            <a href="#" class="app-btn"><img src="https://img.icons8.com/fluency/96/000000/google-play.png"/></a>
                            <a href="#" class="app-btn"><img src="https://img.icons8.com/fluency/96/000000/mac-os.png"/></a>
                        </div>
                    </div>
                </div>
                <div class="footer-col-2">
                    <div class="block">
                        <p><b>FOLLOW US</b></p>
                        <div class="follow-app-logo">
                            <a href="#" class="app-btn"><img src="https://img.icons8.com/fluency/96/000000/facebook-new.png"/></a>
                            <a href="#" class="app-btn"><img src="https://img.icons8.com/fluency/96/000000/twitter.png"/></a>
                            <a href="#" class="app-btn"><img src="https://img.icons8.com/fluency/96/000000/instagram-new.png"/></a>
                            <a href="#" class="app-btn"><img src="https://img.icons8.com/fluency/96/000000/linkedin.png"/></a>
                        </div>
                    </div>
                </div>
                <div class="footer-col-3">
                    <div class="block">
                    <p><b>PAYMENT METHOD</b></p>
                    <div class="payment-app-logo">
                        <a href="#" class="app-btn"><img src="https://img.icons8.com/color/96/000000/visa.png"/></a>
                        <a href="#" class="app-btn"><img src="https://img.icons8.com/fluency/96/000000/mastercard.png"/></a>
                        <a href="#" class="app-btn"><img src="https://img.icons8.com/fluency/96/000000/paypal.png"/></a>
                    </div>
                    </div>
                </div>
            </div>
            <hr>
            <p class="copyright"><b>COPYRIGHT 2022 - GREIL'S PROGRAMMERS</b></p>
        </div>
    </div>
    </body>
</html>
EOT;
}
