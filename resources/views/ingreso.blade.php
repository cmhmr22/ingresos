@extends('plantilla.p')
@section('titulo', 'Page Title')
@section('contenido')
<style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

        </style>
<div class="flex-center position-ref full-height">
            

            <div class="content col-lg-4 col-md-6 col-sm-10">
                <h1>Agregar</h1>

                <div class="col-sm-12">
                    <input type="hidden" name="_token" value="{{csrf_token() }}" id="token">
                        <!--<div class="form-group">
                            <label class="sr-only" for="Tipo">Donde</label>
                            <div class="input-group">
                              <div class="input-group-addon">?</div>
                              <select id="fondo" class="input form-control">
                                  <option value="1">Caja</option>
                                  <option value="2">Banco</option>
                                  <option value="3">Ahorro</option>
                                </select>
                              
                            </div>
                        </div>-->
                        <div class="form-group">
                            <label class="sr-only" for="CANTIDAD">Cantidad (En pesos)</label>
                            <div class="input-group">
                              <div class="input-group-addon">$</div>
                              <input id="cantidad" type="text" class="input form-control" id="CANTIDAD" placeholder="Cantidad">
                              
                            </div>
                          </div>
                        <div class="form-group">
                            <label class="sr-only" for="Tipo">Tipo</label>
                            <div class="input-group">
                              <div class="input-group-addon">T</div>
                              <select id="tipo" class="input form-control">
                                  <option value="0">Ingreso</option>
                                  <option value="1">Egreso</option>
                                  
                                </select>
                              
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="Concepto">Concepto</label>
                            <textarea id="descripcion" class="input form-control" rows="3"></textarea>
                              
                        </div>
                        
                        <div class="form-group">
                             <button id="agregar" type="submit" class="btn btn-default">Agregar</button>
                        </div>
                    
                </div>
            </div>
        </div>
        @stop