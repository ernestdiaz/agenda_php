<?php
session_start();
require('../server/lib.php');
$titulo=$_POST['titulo'];
$start_date=$_POST['start_date'];
$end_date=$_POST['end_date'];
$end_hour=$_POST['end_hour'];
$start_hour=$_POST['start_hour'];
$allDay=$_POST['allDay'];


$con = new ConectorBD();
if ($con->initConexion()=='OK'){
	$datos['fk_usuarios'] = "'".$_SESSION['id']."'";
	$datos['titulo'] = "'".$titulo."'";
    $datos['f_inicio'] = "'".$start_date."'";
    $datos['f_final'] = "'".$end_date."'";
    $datos['h_inicio'] = "'".$end_hour."'";
    $datos['h_final'] = "'".$start_hour."'";
	//$datos['dia_entero'] = "'".$allDay."'";
		if($_POST['allDay'] == "true"){
			$datos['dia_entero'] = '1';
		}else{
			$datos['dia_entero'] = '0';
		}


    if ($con->insertData('eventos', $datos)) {
      //echo "Se han registrado los datos correctamente";
      	$php_response=array("msg"=>"OK","data"=>"2");  
    }else{
    	$php_response=array("msg"=>"Error al registrar los datos","data"=>"2"); 
    }
    echo json_encode($php_response,JSON_FORCE_OBJECT);
    $con->cerrarConexion();
}else {
    echo "Se presentó un error en la conexión";
}

?>
