<?php
	header('Content-Type: application/json');
	$pdo = new PDO("mysql:dbname=sistema; host=localhost","root","i28ujwr6pz");

	$accion = (isset($_GET['accion']))?$_GET['accion']:'leer';
	switch ($accion) {
		case 'agregar':
			$sql = $pdo->prepare('INSERT INTO eventos(titulo,descripcion,color,textColor,start,end)VALUES(:titulo,:descripcion,:color,:textColor,:start,:end)');
			$result = $sql->execute(array(
				"titulo" => $_POST['titulo'],
				"descripcion" => $_POST['descripcion'],
				"color" => $_POST['color'],
				"textColor" => $_POST['textColor'],
				"start" => $_POST['start'],
				"end" => $_POST['end']
			));
			echo json_encode($result);
			break;
		case 'eliminar':
			echo "eliminar";
			break;
		case 'modificar';
			echo "modificar";
			break;
		default:
			$sql = $pdo->prepare("SELECT * FROM eventos");
			$sql -> execute();
			$result = $sql->fetchAll(PDO::FETCH_ASSOC);
			echo json_encode($result);
			break;
	}

	
?>