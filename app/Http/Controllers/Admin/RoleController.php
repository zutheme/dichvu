<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\DB;
use Validator;
use Illuminate\Support\MessageBag;
use Illuminate\Routing\UrlGenerator;
class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //$roles = role::all()->toArray();
        $_iduser = Auth::id();
        $arr = $this->curent_url();
        $_command = $arr['command'];
        $_curent_url = $arr['url'];
        $qr_roles = DB::select('call ListRolePermissionProcedure(?,?,?,?)',array($_iduser, $_command ,'dashboard' , $_curent_url));
        $roles = json_decode(json_encode($qr_roles), true);
        $allow = $roles[0]['allow'];
        if($allow > 0 ){
            return view('admin.roles.index',compact('roles','_curent_url'));
        }else{
            return view('admin.welcome.disable');
            //return redirect()->route('admin.welcome.disable')->with('disable');
        }  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $_iduser = Auth::id();
        $arr = $this->curent_url();
        $_command = $arr['command'];
        $_curent_url = $arr['url'];
        $qr_roles = DB::select('call ListRolePermissionProcedure(?,?,?,?)',array($_iduser, $_command ,'dashboard' , $_curent_url));
        $roles = json_decode(json_encode($qr_roles), true);
        $allow = $roles[0]['allow'];
        if($allow > 0 ){
            return view('admin.roles.create',compact('_command','_curent_url','result'));
        }else{
            return view('admin.welcome.disable');
            //return redirect()->route('admin.welcome.disable')->with('disable');
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
        $validator = Validator::make($request->all(), [ 
            'name' => 'required'
        ]);
        if ($validator->fails()) { 
            $errors = $validator->errors();
            return redirect()->route('admin.roles.create')->with(compact('errors'));           
        }
        $input = $request->all();  
        try {
            $role = Role::create($input); 
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['errorlogin' => $ex->getMessage()]);
            return redirect()->back()->withInput()->withErrors($errors);
        }
        return redirect()->route('admin.roles.index')->with('success','data added');
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
    public function edit($idrole)
    {
        $roles = role::find($idrole);
        return view('admin.roles.edit',compact('roles','idrole'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idrole)
    {
        $this->validate($request,['name'=>'required']);
        //$idcustomer = $role->idcustomer;
        $role = role::find($idrole);
        $role->name = $request->get('name');
        $role->description = $request->get('description');
        $role->save();
        return redirect()->route('admin.roles.index')->with('success','data update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($idrole)
    {
        $role = role::find($idrole);
        $role->delete();
        return redirect()->route('admin.roles.index')->with('success','record have deleted');
    }
    public function curent_url()
    {
        //$host = $request->getHttpHost();
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
}
