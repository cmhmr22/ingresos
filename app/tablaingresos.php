<?php

namespace ingresos;

use Illuminate\Database\Eloquent\Model;

class ingresos extends Model
{
    protected $table = "ingresos"; //para conocer cual es la tabla
     //public $timestamps = false; // para desactivar el timestamp
     protected $fillable= ['descripcion','tipo','cantidad','fondo','baja_logica'];//las columnas de la base de datos
}
