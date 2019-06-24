<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tingresos extends Model
{
      protected $table = "ingresos"; //para conocer cual es la tabla
     //public $timestamps = false; // para desactivar el timestamp
     protected $fillable= ['descripcion','tipo','cantidad','fondo','baja_logica'];//las columnas de la base de datos


}