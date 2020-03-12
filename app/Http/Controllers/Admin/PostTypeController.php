<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\PostType;
use App\category;
use App\CategoryType;
use Auth;
use Illuminate\Support\Facades\DB;
class PostTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$rs_posttypes = DB::select('call ListCategoryByTypeProcedure()');
        //$posttypes = json_decode(json_encode($rs_posttypes), true);
        $posttypes = $this->CheckPermission();
        $allow = $posttypes[0]['allow'];
        if($allow > 0 ){
            //$posttypes = PostType::all()->toArray();
            return view('admin.posttype.index',compact('posttypes'));
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
        $posttypes = $this->CheckPermission();
        $allow = $posttypes[0]['allow'];
        if($allow > 0 ){
            $rs_categories = DB::select('call ListAllCategoryProcedure()');
            $categories = json_decode(json_encode($rs_categories), true);
            return view('admin.posttype.create',compact('categories'));
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
        $this->validate($request,['nametype'=>'required']);
        $posttype = new PostType(['nametype'=> $request->get('nametype'),'idparent' => $request->get('sel_idcategory')]);
        $posttype->save();
        return redirect()->route('admin.posttype.index')->with('success','data added');
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
    public function edit($idposttype)
    {
        $rs_categories = DB::select('call ListAllCategoryProcedure()');
        $categories = json_decode(json_encode($rs_categories), true);
        $posttype = PostType::find($idposttype);
        return view('admin.posttype.edit',compact('posttype','idposttype','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idposttype)
    {
        $this->validate($request,['nametype'=>'required']);
        //$idcustomer = $posttype->idcustomer;
        $posttype = PostType::find($idposttype);
        $posttype->nametype = $request->get('nametype');
        $posttype->idparent = $request->get('sel_idcategory');
        $posttype->save();

        return redirect()->route('admin.posttype.index')->with('success','data update');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   public function destroy($idposttype)
    {
        $posttype = PostType::find($idposttype);

        $posttype->delete();

        return redirect()->route('admin.posttype.index')->with('success','record have deleted');
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
        $qr_permission = DB::select('call EnableListPostTypeProcedure(?,?,?,?)',array($_iduser, $_command ,'dashboard' , $_curent_url));
        $permissions = json_decode(json_encode($qr_permission), true);
        return $permissions;
    }
}
