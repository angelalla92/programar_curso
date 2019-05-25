$(document).on('submit', '#formulario_registrar_curso', function(e){
    e.preventDefault();
    var datitos=$(this).serialize();

    $.ajax({
        url: './ajax/registar_horario_ajax.php',
        method: 'post',
        data: datitos
    }).done(function(XD){
        if(XD=='registado'){
            alert('succefully');
           
        }
    })
})