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
        $host = $request->getHttpHost();
        $_curent_url = url()->current();
        $url1 = \Request::segment(1);
        $url2 = \Request::segment(2);
        if($url2){
            $url2 = '/'.$url2;
        }
        $_curent_url = $url1.$url2;
        $qr_roles = DB::select('call ListRolePermissionProcedure(?,?,?,?)',array($_iduser, 'select' ,'dashboard' , $_curent_url));
        $roles = json_decode(json_encode($qr_roles), true);
        return view('admin.roles.index',compact('roles','_curent_url'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.roles.create');
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
}
