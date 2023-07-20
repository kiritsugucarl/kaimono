<?php
session_start();

include 'functions.php';
$pdo = pdo_connect_mysql();
// Default page / Home page will be set to home.php
$page = isset($_GET['page']) && file_exists($_GET['page'] . '.php') ? $_GET['page'] : 'home';
// Include and show the requested page which is Home.php
include $page . '.php';
