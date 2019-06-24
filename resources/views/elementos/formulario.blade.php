<style>

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
                        
                        <div class="form-group text-center ">
                             <button id="agregar" data-dismiss="modal" type="submit" class="btn btn-default">Agregar</button>
                        </div>
                    
               
            
