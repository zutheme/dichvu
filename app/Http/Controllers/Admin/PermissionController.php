<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;
use Illuminate\Support\Facades\DB;
use Validator;
use Illuminate\Support\MessageBag;
use App\Permission;
use App\Role;
use App\ImpPerm;
use App\perm_command;
use Illuminate\Support\Facades\Input;
use App\menu;
use App\category;
use App\CategoryType;
use App\PostType;
class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions = Permission::all()->toArray();
        return view('admin.permission.index',compact('permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
        $categorytypes = CategoryType::all()->toArray();
        $perm_commands = perm_command::all()->toArray();
        //$posttypes = PostType::all()->toArray();
        return view('admin.permission.create',compact('perm_commands','categorytypes','posttypes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), ['name' => 'required','idpermcommand' => 'required']);
        if ($validator->fails()) { 
            $errors = $validator->errors();
            return redirect()->route('admin.permission.create')->with(compact('errors'));           
        }
        $input = $request->all();
        $command = $request->get('name');
        $idpermcommand = $request->get('idpermcommand');          
        $message = "";
        $_idcategory = 0;  
        try {
            $iduserimp = Auth::id();
            $l_idcategory = $request->input('list_check');
            if($l_idcategory){
                foreach ($l_idcategory as $idcategory) {
                   $_idcategory = $idcategory;
                } 
            }
            //$result = DB::select('call ListcatparentProcedure()');
            //$categories = json_decode(json_encode($result), true);
            $result = $command.','.$idpermcommand.','.$_idcategory.','.$iduserimp;
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['errorlogin' => $ex->getMessage()]);
            return redirect()->back()->withInput()->withErrors($errors);
        } 
        return redirect()->route('admin.permission.index')->with('success',$result);
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
    public function edit($idperm)
    {
        DB::enableQueryLog();
        $permissions = permission::find($idperm);
        //$result = DB::select( DB::raw("select r.idrole, r.name, p.idimp_perm, p.idrole as id_role from roles as r LEFT join (select * from imp_perms where idperm='$idperm') as p on r.idrole=p.idrole ") );
        $result = DB::select('call ListRoleIdpermProcedure(?)',array($idperm));
        $roles = json_decode(json_encode($result), true);
        return view('admin.permission.edit',compact('permissions','idperm','roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idperm)
    {
        $this->validate($request,['name'=>'required']);
        $permission = permission::find($idperm);
        $permission->name = $request->get('name');
        $permission->description = $request->get('description');
        $permission->save();
        // $iduserimp = Auth::id();
        $message = "";
        // $listroles = $request->input('role_list');
        //     if($listroles){
        //         foreach ($listroles as $item) {
        //             $str = explode("-", $item);
        //             $message .="(str[0]=".$str[0]." * str[1]=".$str[1]."),";
        //             $idimp_perm = $str[0];
        //             $idrole = $str[1];
        //         } 
        // }
        return redirect()->route('admin.permission.index')->with('success',$message);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($idperm)
    {
        $permission = permission::find($idperm);
        $permission->delete();
        return redirect()->route('admin.permission.index')->with('success','record have deleted');
    }
}
