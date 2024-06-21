<?php

    $dsn = "mysql:host=localhost;dbname=library;charset=UTF8";
    $username = "root";
    $password = "";
    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ];

    $pdo = new \PDO($dsn, $username, $password, $options);

    return $pdo;