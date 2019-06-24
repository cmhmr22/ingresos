<?php
//MC = Movimientos Controller 
namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
//use app\Http\Controllers\Controller;



class MC extends Controller
{
     public function add(Request $data)
    { // vista del menu de clientes
         $v = \Validator::make($data->all(), [
            
            'tipo' => 'required',
            'cantidad' => 'required|integer',
            //'fondo' => 'required',
            
            ]);
             if ($v->fails())
            {   
                return response()->array([
                 $v->errors()
                ], 500);
            }

        \App\tingresos::create([
                'descripcion'=>$data['descripcion'],
                'tipo'=>$data['tipo'],
                'cantidad'=>$data['cantidad'],
                'fondo'=>1,
            ]);
        //$ultimo = \App\tingresos::all();
        return response()->json([
           "mensaje"=>"Creado"
            ]);//$ultimo->last();
    }
    public function listar()
    { // Lista todo para presentarlo en un list
        $listar = \App\tingresos::where('baja_logica', '=', 1)->orderBy('created_at', 'desc')->get();

        foreach ($listar  as $ok) {
            //agrega un formato de fecha mas amigable 
            $ok['fecha'] = date_format(date_create($ok['created_at']), 'd/m/y H:i:s');
            //agrega un formato al ingreso, para evitar mostrar el booleano
            if ($ok['tipo'] == 0) {
                $ok['nTipo'] = "Ingreso";
            }
            else
            {
               $ok['nTipo'] = "Egreso"; 
            }
            //Agrega un formato a la cantidad para que sea mas facil presentarlo
            $ok['fCantidad'] = number_format($ok['cantidad'],2);
        }
        return $listar;
    }
    

    ////////////////////
    //
    public function totales()
    {
        $siempre = MC::totalSiempre();
        $hoy = MC::totalHoy();
        $ayer = MC::totalAyer();
        $semana = MC::totalLastWeek();
        $mes = MC::totalLastMonth();
        $semestre = MC::totalSixMonth();
        $year = MC::totalThisYear();
    return ([
        'siempre' => $siempre,
        'hoy' => $hoy,
        'ayer' => $ayer,
        'semana' => $semana,
        'mes' => $mes,
        'semestre'=> $semestre,
        'year' => $year ]);

    /*
     return view('panel',[
        'siempre' => $siempre,
        'hoy' => $hoy,
        'ayer' => $ayer,
        'semana' => $semana,
        'mes' => $mes]);
        */
    }
///funciones 
    ///////////////////
    function totalSiempre()
    {
        return MC::sumar(MC::obtenerTotal());
    }
    function totalHoy()
    {
        return MC::sumar(MC::obtenerDiario());
    }
    function totalAyer()
    {
        return MC::sumar(MC::obtenerAyer());
    }
    function totalLastWeek()
    {
        return MC::sumar(MC::obtenerSemanal());
    }
    function totalLastMonth()
    {
        return MC::sumar(MC::obtenerMensual());
    }
   function totalSixMonth()
    {
        return MC::sumar(MC::obtenerSeisMeses());
    }
    function totalThisYear()
    {
        return MC::sumar(MC::obtenerThisYear());
    }
   
   
    function sumar($json)
    { // muestra
        $sum = 0;
        $res = 0;      
        foreach (json_decode($json) as $key) {
            if ($key->tipo == '0') {//obtiene el ingreso
                $sum = $key->total_sales;
            }
            if ($key->tipo == '1') { //obtiene los egresos
                $res = $key->total_sales;
            }
        }

        $total = $sum - $res;

        return (['total' => number_format($total,2),'suma' => number_format($sum,2),'res' => number_format($res,2)]);
        
        //return number_format($total,2); //$listar;//$ultimo->last();
    }

    function obtenerTotal()
    {
         $ingresos = DB::table('ingresos')
                ->select('tipo', DB::raw('SUM(cantidad) as total_sales'))
                ->where('baja_logica', '=', 1)
                ->groupBy('tipo')
                ->get();
        return $ingresos;
    }
    function obtenerDiario()
    {
         $ingresos = DB::table('r_hoy')
                ->select('tipo', DB::raw('SUM(cantidad) as total_sales'))
                ->where('baja_logica', '=', 1) //representa el ingreso
                ->groupBy('tipo')
                ->get();
        return $ingresos;
    }
    function obtenerAyer()
    {
         $ingresos = DB::table('r_ayer')
                ->select('tipo', DB::raw('SUM(cantidad) as total_sales'))
                ->where('baja_logica', '=', 1) //representa el ingreso
                ->groupBy('tipo')
                ->get();
        return $ingresos;
    }
    function obtenerSemanal()
    {
         $ingresos = DB::table('r_semanapasada')
                ->select('tipo', DB::raw('SUM(cantidad) as total_sales'))
                ->where('baja_logica', '=', 1) //representa el ingreso
                ->groupBy('tipo')
                ->get();
        return $ingresos;
    }
    function obtenerMensual()
    {
         $ingresos = DB::table('r_mespasado')
                ->select('tipo', DB::raw('SUM(cantidad) as total_sales'))
                ->where('baja_logica', '=', 1) //representa el ingreso
                ->groupBy('tipo')
                ->get();
        return $ingresos;
    }
    function obtenerMesPasado()
    {
         $ingresos = DB::table('r_mespasado')
                ->select('tipo', DB::raw('SUM(cantidad) as total_sales'))
                ->where('baja_logica', '=', 1) //representa el ingreso
                ->groupBy('tipo')
                ->get();
        return $ingresos;
    }
    function obtenerSeisMeses()
    {
         $ingresos = DB::table('r_seismeses')
                ->select('tipo', DB::raw('SUM(cantidad) as total_sales'))
                ->where('baja_logica', '=', 1) //representa el ingreso
                ->groupBy('tipo')
                ->get();
        return $ingresos;
    }
    function obtenerThisYear()
    {
         $ingresos = DB::table('r_thisyear')
                ->select('tipo', DB::raw('SUM(cantidad) as total_sales'))
                ->where('baja_logica', '=', 1) //representa el ingreso
                ->groupBy('tipo')
                ->get();
        return $ingresos;
    }

}
