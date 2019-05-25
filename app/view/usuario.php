<?php
require_once './ajax/listandoprofesores.php';
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
</head>
<body>      
    <div class="container" style="margin-top:70px" >
        <div class="row justify-content-around" >                  
            <form autocomplete="off"  name="formulario_registrar_curso" id="formulario_registrar_curso" >      
                
                <div class="form-row">
                    <h3>Formulario de Registro de CURSOS  </h3>
                    <div class="form-group col-md-6">
                        <label for="">FECHA INICIO</label>
                        <input type="date" value="<?php echo date("Y-m-d"); ?>" class="form-control" name="fecini">
                    </div>
                    <div class="form-group col-md-6"> 
                        <label for="">FECHA FIN</label>
                        <input type="date" class="form-control" name="fecfin">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="">PROFESOR:</label>
                        <select name="pron" id="" class="form-control">
                        <option value="">seleccione un profesor</option>  
                        <?php
                        foreach($res2 as $val){
                            echo '<option value='.$val['CODIGO_PER'].'>'.$val['NOMBRE_PER'].'</option>';
                        }
                        ?>
                        </select>                
                    </div>
                    <div class="form-group col-md-6">
                        <label>CURSO:</label>
                        <select name="curn" id="" type="text" class="form-control">
                            <option value="">Seleccione su curso</option>
                            <?php 
                            //$res es el arreglo a iterar
                            //$val es el alias que va a tener cada iteracion
                                foreach($res as $val)
                                {
                                    echo '<option value='.$val['CODIGO_CUR'].'>'.$val['NOMBRE_CUR'].'</option>';
                                } 
                            ?>
                        </select>    
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <LABEl>LOCAL:</LABEl>
                        <select name="locn" id="" type="text" class="form-control">
                            <option value="">seleccione un local</option>
                            <?php 
                            //$res es el arreglo a iterar
                            //$val es el alias que va a tener cada iteracion
                                foreach($res3 as $val){
                                    echo '<option value='. $val['CODIGO_LOC'].'>'.$val['DIRECCION_LOC'].'</option>';
                                }
                            ?>                    
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">FRECUENCIA:</label>
                        <input type="text" class="form-control" name="fren" id="frei">
                    </div>
                </div>
                <div class="form-row">            
                    <div class="form-group col-md-6">
                        <label for="">hora</label>
                        <input type="text" class="form-control" id="hori" name="horn">
                    </div>
                </div>
                
                    <button class="btn btn-primary" type="submit">Enviar</button>
            </form>                
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="public/js/agregar.js"></script>  
</body>
</html>