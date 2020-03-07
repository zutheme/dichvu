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
    private $main_menu='';
    public function index()
    {
        $qr_permission = DB::select('call ListPermissionProcedure()',array());
        $permissions = json_decode(json_encode($qr_permission), true);
        $qr_role = DB::select('call ListRolesProcedure()',array());
        $roles = json_decode(json_encode($qr_role), true);
        return view('admin.permission.index',compact('permissions','roles'));
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
        $name = $request->get('name');
        $description = $request->get('description');
        $idpermcommand = $request->get('idpermcommand');         
        $message = "";
        $idcategory = 0;  
        try {
            $iduserimp = Auth::id();
            //$idcategory = $request->input('list_check');
            $l_idcategory = $request->input('list_check');
            if($l_idcategory){
                foreach ($l_idcategory as $_idcategory) {
                   $idcategory = $_idcategory;
                } 
            }
            $qr_permission = DB::select('call AddPermissionProcedure(?,?,?,?)',array($name, $description, $idpermcommand, $idcategory));
            $rs_permission = json_decode(json_encode($qr_permission), true);
            $result = $name.','.$idpermcommand.','.$idcategory.','.$iduserimp;
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
        //$permissions = permission::find($idperm);
        $qr_permissions = DB::select('call PermissionByidProcedure(?)',array($idperm));
        $permissions = new \stdClass();
        foreach ($qr_permissions as $item) {
            foreach ($item as $key => $value) {
                $permissions->$key = $value;
            }
        }
        $categorytypes = CategoryType::all()->toArray();
        $perm_commands = perm_command::all()->toArray();
        $result = DB::select('call ListRoleIdpermProcedure(?)',array($idperm));
        $roles = json_decode(json_encode($result), true);
        $idcategory = $permissions->idcategory;
        $cate_selected = array($idcategory);
        $idcattype = $permissions->idcattype;
        $listcate = $this->catebytype($idcattype,$cate_selected);
        return view('admin.permission.edit',compact('permissions','idperm','roles','perm_commands','categorytypes','listcate'));
    }
    public function map($value){
        return (array)$value;
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
        //$permission = permission::find($idperm);
        $name = $request->get('name');
        $description = $request->get('description');
        $idpermcommand = $request->get('idpermcommand');
        $iduserimp = Auth::id();
        $idcategory = 0;
        $message = "";
        try {
            //$iduserimp = Auth::id();
            $l_idcategory = $request->input('list_check');
            if($l_idcategory){
                foreach ($l_idcategory as $_idcategory) {
                   $idcategory = $_idcategory;
                } 
            }
            $qr_permission = DB::select('call UpdatePermissionProcedure(?,?,?,?,?)',array($name, $description, $idpermcommand, $idcategory, $idperm));
            $rs_permission = json_decode(json_encode($qr_permission), true);
           $message = $name.','.$idpermcommand.','.$idcategory.','.$iduserimp.','.$idperm;
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['errorlogin' => $ex->getMessage()]);
            return redirect()->back()->withInput()->withErrors($errors);
        } 
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
    //show sub category
    public function catebytypehtml($_idcatetype,$cate_selected = array()) {
        $qr_catebytype = DB::select('call ListAllCateByIdcatetype(?)',array($_idcatetype));
        $categories = json_decode(json_encode($qr_catebytype), true);
        $this->showCategories($categories,0,$cate_selected);
        $result =  $this->main_menu;
        return response()->json(array('success' => true, 'result' => $result), 200);
    }
    public function catebytype($_idcatetype,$cate_selected = array()) {
        $qr_catebytype = DB::select('call ListAllCateByIdcatetype(?)',array($_idcatetype));
        $categories = json_decode(json_encode($qr_catebytype), true);
        $this->showCategories($categories,0,$cate_selected);
        $result =  $this->main_menu;
        return $result;
        //return response()->json(array('success' => true, 'result' => $result), 200);
    }
    public function showCategories($categories, $idparent = 0, $cate_selected){
        $cate_child = array();
        foreach ($categories as $key => $item) {
            if ($item['idparent'] == $idparent){
                $cate_child[] = $item;
                unset($categories[$key]);
            }
        }
        $list_cat="";     
        if($cate_child) {
            
            $this->main_menu .= '<ul class="list-check">';
            foreach ($cate_child as $key => $item){
                $this->main_menu .= '<li><input class="array-parent" type="hidden" value="'.$idparent.'">';
                if(in_array($item['idcategory'], $cate_selected)){
                     $checked='checked';
                }else{
                    $checked='';
                }
                $this->main_menu .= '<input name="list_check[]" class="array-check" type="radio" value="'.$item['idcategory'].'" '.$checked.' ><label>'.$item['namecat'].'</label>';
                $this->showCategories($categories, $item['idcategory'], $cate_selected);
                $this->main_menu .= '</li>';
            }
            $this->main_menu .= '</ul>';
        }
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
    public function CheckPermission(){
        $_iduser = Auth::id();
        $arr = $this->curent_url();
        $_command = $arr['command'];
        $_curent_url = $arr['url'];
        $qr_perm_commands = DB::select('call ListPermissionCommands(?,?,?,?)',array($_iduser, $_command ,'dashboard' , $_curent_url));
        $perm_commands = json_decode(json_encode($qr_perm_commands), true);
        return $perm_commands;
    }
}
