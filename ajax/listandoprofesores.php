<?php
require_once './app/model/conexion.php';
require_once './app/model/programar_curso.php';

$variable = new Programarcurso();
$res=$variable->listar_curso();
$res2=$variable->listar_profesor();
$res3=$variable->listar_local();

print_r($res);
print_r($res2);
print_r($res3);
?>