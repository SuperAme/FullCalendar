<?php
	header('Content-Type: application/json');
	$pdo = new PDO("mysql:dbname=sistema; host=localhost","root","i28ujwr6pz");

	$sql = $pdo->prepare("SELECT * FROM eventos");
	$sql -> execute();
	$result = $sql->fetchAll(PDO::FETCH_ASSOC);
	echo json_encode($result);
?>