@extends('plantilla.p')
@section('titulo', 'Page Title')
@section('contenido')
<style type="text/css">
    .cuadro{
        border: solid;
        border-color: #eee;
        font-size: 1em;
    }

</style>


<div class="col-sm-12">
    <!--panel lateral izquierdo-->
    @include('elementos.panelizq')
    
    
    <!--panel lateral derecho--> 
    <div class="col-sm-9" style="border: solid; border-color:#ddd;">
        @include('elementos.totalycargo')
        
        @include('elementos.casillas')
    
    <div class="col-sm-12">
      <p>Este script tiene la finalidad de conocer el balance de ingresos y egresos, solo agrega todos los ingresos y egresos que tengas a lo largo del dia</p>
    </div>      
    </div>  

</div>
          



@include('elementos.modal')


@stop