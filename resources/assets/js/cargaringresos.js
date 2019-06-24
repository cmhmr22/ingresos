 $(document).ready(function(){//alista el documento
        
    $("#agregar").on( "click",function(callback){//genera la funcion que se activa cuando se da click en el link con id registro
        
        var route = "http://localhost/ingresos/public/rmov"; //ruta
        var token = $("#token").val(); //se vincula con el token
        $.ajax({ //crea una funcion ajax que provoca que se envie la informacion .
            
            url: route,
            headers: {'X-CSRF-TOKEN': token},
            type: 'POST',
            dataType: 'json',
            data: {
                fondo: $("#fondo").val(),
                cantidad: $("#cantidad").val(),
                tipo: $("#tipo").val(),
                descripcion: $("#descripcion").val(),
            },


            success:function(data, textStatus, jqXHR){//crea una pequeña funcion para mostrar un mensaje
                //alert(data.responseText);
                //alert("oki");
                //$("#msj-success").fadeIn(200);
                alertify.success('Accion realizada con Exito!');
                $(".input").val("");
                setTimeout(temporizador, 3000);
                
            },
            error:function(data, textStatus, jqXHR){//crea una pequeña funcion para mostrar un mensaje
                /*
                    var errormsj = "resultaron los siguientes errores: <br> ";
                    $.each( JSON.parse(data.responseText), function(key, val) 
                    {//en esta funcion asigna la llave, y las variables
                    //voy a hacer un doble foreach, se que no es lo mejor pero es lo unico que encontre de momento con el tiempo que tengo
                    $.each( val, function(tipo, mensaje){ 
                        errormsj = errormsj+ tipo + ": " + mensaje +"<br> ";
                    });
                });//se cierra $.each   
                    
                document.getElementById("errores").innerHTML = errormsj;
                */
                alertify.error('Hubo un error');
                

                }
        });
            
        


    });
                
            
});//ready.function