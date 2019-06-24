$(document).ready(function(){
    //esta funcion muestra el contenido // todo lo relacionado con el autocompletar
    $('[data-toggle="tooltip"]').tooltip(); 
    cargartabla(ruta+"list");
    
     });
    function cargartabla(docJson)
        {
             var ruta = docJson;
             var tabladatos = $("#listacargos");
                $.getJSON(ruta, function(respuesta)
                { //obtiene el json, proporciona la ruta, y crea una funcion respuesta
                    var c;
                    $.each( respuesta, function(key, val) 
                    {
                        if (val.tipo == 0) 
                            {
                              c = 'success';  
                            }
                            else
                            {
                               c = 'danger';  
                            }
                       tabladatos.append(//hace la incersion de datos
                            "<tr data-toggle='tooltip' title='Concepto: "+val.descripcion+"' class='"+c+"'>"+
                                "<td>" +val.fecha+ "</td>"+ 
                                "<td>" +val.nTipo+ "</td>"+    
                                "<td> $" +val.fCantidad+ "</td>"+ 
                            "</tr>"
                            )
                    
                    });
                             
                });//se cierra $.getJSON
        }

            
               
            
            
        
    
