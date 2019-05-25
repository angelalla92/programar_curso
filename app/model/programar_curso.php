<?php
class Programarcurso{
    private $curso;
    private $profesor;
    private $local;
    private $fecha_inicio;
    private $fecha_fin;
    private $frecuencia;
    private $hora;

    public function Programarcurso(){

    }
    public function listar_curso(){
        $cn=new Cn();
        $mysqli=$cn->cn;
        $stm=$mysqli->prepare("select CODIGO_CUR, NOMBRE_CUR from cursos");
        $stm->execute();
        $array=[];
        if($stm->error==''){
            $rs = $stm->get_result();
            while ($myrow = $rs->fetch_assoc()){
                $array[]=$myrow;
            }
            $resultado = $array;
        }else{
            $resultado = $stm->error;
        }
        return $resultado;
    }
    public function listar_profesor(){
        $cn=new Cn();
        $mysqli=$cn->cn;
        $stm=$mysqli->prepare("select CODIGO_PER, NOMBRE_PER from personal");
        $stm->execute();
        $array=[];
        if($stm->error==''){
            $rs = $stm->get_result();
            while ($myrow = $rs->fetch_assoc()){
                $array[]=$myrow;
            }
            $resultado = $array;
        }else{
            $resultado = $stm->error;
        }
        return $resultado;
    }
    public function listar_local(){
        $cn= new Cn();
        $mysqli=$cn->cn;
        $stm=$mysqli->prepare("select CODIGO_LOC, DIRECCION_LOC from locales");
        $stm->execute();
        $array=[];
        if($stm->error==''){
            $rs = $stm->get_result();
            while($myrow = $rs->fetch_assoc()){
                $array[]=$myrow;
            }
            $resultado = $array;
        }else{
            $resultado = $stm->error;
        }
        return $resultado;
    }
    public function registrar_horario($curso, $profesor, $local, $fecha_inicio, $fecha_fin, $frecuencia, $hora){
        $cn= new Cn();
        $mysqli=$cn->cn;
        $stm=$mysqli->prepare("insert into detalle_curso value (?,?,?,?,?,?,?)");
        $stm->bind_param("sssssss",$curso, $profesor, $local, $fecha_inicio, $fecha_fin, $frecuencia, $hora);
        $stm->execute();
        if($stm->error==""){
            if($stm->affected_rows>0){
                $res="registado";            
            }else{
                $res="no registro";
            }         
        }else{
            $res=$stm->error;
        }
        return $res;
    }
}
?>