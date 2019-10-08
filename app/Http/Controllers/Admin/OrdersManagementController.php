<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Products;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\DB;
use Validator;
use Illuminate\Support\MessageBag;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;
use App\Posts;
use App\Impposts;
use App\PostType;
use App\category;
use App\status_type;
use App\files;
use App\size;
use App\color;
use File;
use App\func_global;

class OrdersManagementController extends Controller
{ 
    public function listorder(Request $request,$_idstore)
    {
         //try { 
            //$request->session()->forget('order_end_date');
            $_start_date = $request->session()->get('order_start_date');
            //$_end_date = $request->session()->get('order_end_date');
            $_idstore = $request->session()->get('order_idstore');
            $_filter = $request->session()->get('filter');
            if(!isset($_filter)){
                $_end_date = date('Y-m-d H:i:s');
                $request->session()->put('order_end_date', $_end_date);
            }else{
                $_end_date = $request->session()->get('order_end_date');
                $request->session()->put('order_end_date', $_end_date);
                $request->session()->forget('order_end_date');
            }
            //$_id_post_type = $request->session()->get('id_post_type');
            $_id_status_type = $request->session()->get('order_id_status_type'); 
            if(!isset($_start_date) && !isset($_end_date)){
                $_start_date= date('Y-m-d H:i:s',strtotime("-120 days"));   
                session()->put('order_start_date', $_start_date);               
            }       
            if(!isset($_idstore)){
                $_idstore = 11;
                session()->put('order_idstore',  $_idstore);
            } 
            if(!isset($_id_status_type)){
                $_id_status_type=1;
                session()->put('order_id_status_type',  $_id_status_type);
            }
            $errors = $_start_date.",end:".$_end_date.','.$_idstore.','.$_id_status_type;         
            $qr_orderlist = DB::select('call ListOrderProductProcedure(?,?,?,?)',array($_start_date,$_end_date, $_idstore, $_id_status_type));
            $rs_orderlist = json_decode(json_encode($qr_orderlist), true);
            return View('admin.orderlist.index')->with(compact('rs_orderlist'))->with(compact('errors'));
        //} catch (\Illuminate\Database\QueryException $ex) {
            //$errors = new MessageBag(['error' => $ex->getMessage()]);
            //return View('admin.orderlist.index')->with(compact('errors'));
        //}
    }
    public function show($ordernumber)
    {
        $qr_orderproduct = DB::select('call DetailOrderByIdorderProcedure(?)',array($ordernumber));
        $rs_orderproduct = json_decode(json_encode($qr_orderproduct), true);
        return View('admin.orderlist.show')->with(compact('rs_orderproduct'));
    }
}
