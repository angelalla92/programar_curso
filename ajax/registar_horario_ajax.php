<?php
// echo "asdasd";
require_once '../app/model/conexion.php';
require_once '../app/model/programar_curso.php';

$variable = new Programarcurso();
// print_r($_POST);
$res=$variable->registrar_horario($_POST['curn'],$_POST['pron'],$_POST['locn'],$_POST['fecini'],$_POST['fecfin'],$_POST['fren'],$_POST['horn']);
echo $res;

?>