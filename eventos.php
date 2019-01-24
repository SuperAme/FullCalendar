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
			$respuesta = false;
			if(isset($_POST['id'])){
				$sql = $pdo->prepare("DELETE FROM eventos WHERE ID = :ID");
				$respuesta = $sql->execute(array("ID"=>$_POST['id']));
			}
			echo json_encode($respuesta);
			break;
		case 'modificar';
			
			$sql = $pdo->prepare('UPDATE eventos SET 
				titulo=:titulo,
				descripcion=:descripcion,
				color=:color,
				textColor=:textColor,
				start=:start,
				end=:end
				WHERE ID = :ID');
				$result = $sql->execute(array(
				"ID" => $_POST['id'],
				"titulo" => $_POST['titulo'],
				"descripcion" => $_POST['descripcion'],
				"color" => $_POST['color'],
				"textColor" => $_POST['textColor'],
				"start" => $_POST['start'],
				"end" => $_POST['end']
			));
			echo json_encode($result);
			break;
		default:
			$sql = $pdo->prepare("SELECT * FROM eventos");
			$sql -> execute();
			$result = $sql->fetchAll(PDO::FETCH_ASSOC);
			echo json_encode($result);
			break;
	}

	
?>