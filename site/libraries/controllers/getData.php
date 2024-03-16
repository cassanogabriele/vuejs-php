<?php 
require_once (dirname(__DIR__) . '/models/Authors.php');

// Il connait la PDO et la fonction qui liste 
$model = new Wines();
$sql = $model->list();

// Prend le résultat du SQL et le transformer en format JSON
echo json_encode($sql->fetchAll());
?>