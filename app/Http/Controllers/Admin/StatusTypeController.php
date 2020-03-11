<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\status_type;
use Auth;
use Illuminate\Support\Facades\DB;
class StatusTypeController extends Controller{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $statustypes = $this->CheckPermission();
        $allow = $statustypes[0]['allow'];
        if($allow > 0 ){
             //$statustypes = status_type::all()->toArray();
        return view('admin.statustype.index',compact('statustypes'));
        }else{
            return view('admin.welcome.disable');
        } 
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         $statustypes = $this->CheckPermission();
        $allow = $statustypes[0]['allow'];
        if($allow > 0 ){
             return view('admin.statustype.create');
        }else{
            return view('admin.welcome.disable');
        } 
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,['name_status_type'=>'required']);

        $statustype = new status_type(['name_status_type'=> $request->get('name_status_type')]);

        $statustype->save();

        return redirect()->route('admin.statustype.index')->with('success','data added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_status_type)
    {
        $statustypes = status_type::find($id_status_type);

        return view('admin.statustype.edit',compact('statustypes','id_status_type'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idstatustype)
    {
        $this->validate($request,['name_status_type'=>'required']);
        //$idcustomer = $statustype->idcustomer;
        $statustype = status_type::find($idstatustype);
        $statustype->name_status_type = $request->get('name_status_type');
        $statustype->save();

        return redirect()->route('admin.statustype.index')->with('success','data update');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   public function destroy($idstatustype)
    {
        $statustype = status_type::find($idstatustype);

        $statustype->delete();

        return redirect()->route('admin.statustype.index')->with('success','record have deleted');
    }
    public function curent_url()
    {
        //$_curent_url = url()->current();
        $_command = "select";
        $url1 = \Request::segment(1);
        $url2 = \Request::segment(2);
        $url3 = \Request::segment(3);
        if($url2){
            $url2 = '/'.$url2;
        }
        if($url3){
            $_command = $url3;
            $url3 = '/'.$url3;
        }
        $result = array('url'=>$url1.$url2.$url3,'command'=>$_command);
        return $result;
    }
    public function CheckPermission(){
        $_iduser = Auth::id();
        $arr = $this->curent_url();
        $_command = $arr['command'];
        $_curent_url = $arr['url'];
        $qr_permission = DB::select('call EnableListStatusTypeProcedure(?,?,?,?)',array($_iduser, $_command ,'dashboard' , $_curent_url));
        $permissions = json_decode(json_encode($qr_permission), true);
        return $permissions;
    }
}
