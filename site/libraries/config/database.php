<?php

/**
 * Retourne une connexion à la DB
 * 
 * @return PDO
 */
function getPDO(): PDO
{
    $servername = '127.0.0.1';
    $dbname = 'c0moviesauthors';
    $user = 'c0moviesauthors';
    $pass = 'spzgTg4DF!2N';

    try {
        $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $user, $pass, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, 
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);

        return $pdo;
    } catch (PDOException $e) {
        // Gérer les erreurs de connexion ici, par exemple en affichant un message ou en enregistrant dans un journal
        die("Erreur de connexion à la base de données: " . $e->getMessage());
    }
}
