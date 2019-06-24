$(document).ready(function(){
    //esta funcion muestra el contenido // todo lo relacionado con el autocompletar
    
    mostrar(ruta+"s-total");
 });
    
    function mostrar(docJson)
        {
             var ruta = docJson;

                $.getJSON(ruta, function(respuesta)
                { //obtiene el json, proporciona la ruta, y crea una funcion respuesta
                    $.each( respuesta, function(key, val) 
                    {
                        //alert(key);
                    $.each( val, function(tipo, mensaje){ 
                        //$("key").after("<i>After</i>");
                        switch(key) {
                            case "hoy":
                                switch(tipo){
                                    case "total":
                                        $("#h-t").append(mensaje);
                                    break;
                                    case "suma":
                                        $("#h-s").append(mensaje);
                                    break;
                                    case "res":
                                        $("#h-r").append(mensaje);
                                    break;
                                }
                            
                            break;
                            case "ayer":
                                switch(tipo){
                                    case "total":
                                        $("#a-t").append(mensaje);
                                    break;
                                    case "suma":
                                        $("#a-s").append(mensaje);
                                    break;
                                    case "res":
                                        $("#a-r").append(mensaje);
                                    break;
                                }
                            
                            break;
                            case "semana":
                                switch(tipo){
                                    case "total":
                                        $("#s-t").append(mensaje);
                                    break;
                                    case "suma":
                                        $("#s-s").append(mensaje);
                                    break;
                                    case "res":
                                        $("#s-r").append(mensaje);
                                    break;
                                }
                            
                            break;
                            case "mes":
                                switch(tipo){
                                    case "total":
                                        $("#m-t").append(mensaje);
                                    break;
                                    case "suma":
                                        $("#m-s").append(mensaje);
                                    break;
                                    case "res":
                                        $("#m-r").append(mensaje);
                                    break;
                                }
                            
                            break;
                            case "semestre":
                                switch(tipo){
                                    case "total":
                                        $("#6-t").append(mensaje);
                                    break;
                                    case "suma":
                                        $("#6-s").append(mensaje);
                                    break;
                                    case "res":
                                        $("#6-r").append(mensaje);
                                    
                                }
                                break;
                            case "year":
                                switch(tipo){
                                    case "total":
                                        $("#ty-t").append(mensaje);
                                    break;
                                    case "suma":
                                        $("#ty-s").append(mensaje);
                                    break;
                                    case "res":
                                        $("#ty-r").append(mensaje);
                                    break;
                                }
                            
                            break;    
                            
                            
                            case "siempre":
                                switch(tipo){
                                    case "total":
                                        $("#siempre-t").append(mensaje);
                                    break;
                                    
                                }
                            
                            break;
                        }
                        
                    });
                    });
                             
                });//se cierra $.getJSON
        }

            
               
            
            
        
    
