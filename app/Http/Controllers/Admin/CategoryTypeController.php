<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CategoryType;
use Illuminate\Support\Facades\DB;
use Auth;
class CategoryTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cattypes = $this->CheckPermission();
        $allow = $cattypes[0]['allow'];
        if($allow > 0 ){
             //$cattypes = CategoryType::all()->toArray();
             return view('admin.cattype.index',compact('cattypes'));
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
        return view('admin.cattype.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,['catnametype'=>'required']);

        $cattype = new CategoryType(['catnametype'=> $request->get('catnametype')]);

        $cattype->save();

        return redirect()->route('admin.cattype.index')->with('success','data added');
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
     public function edit($idcattype)
    {
        $cattype = CategoryType::find($idcattype);

        return view('admin.cattype.edit',compact('cattype','idcattype'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idcattype)
    {
        $this->validate($request,['catnametype'=>'required']);
        //$idcustomer = $CategoryType->idcustomer;
        $cattype = CategoryType::find($idcattype);
        $cattype->catnametype = $request->get('catnametype');
        $cattype->save();

        return redirect()->route('admin.cattype.index')->with('success','data update');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   public function destroy($idcattype)
    {
        $cattype = CategoryType::find($idcattype);

        $cattype->delete();

        return redirect()->route('admin.cattype.index')->with('success','record have deleted');
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
        $qr_permission = DB::select('call EnableListCateTypeProcedure(?,?,?,?)',array($_iduser, $_command ,'dashboard' , $_curent_url));
        $permissions = json_decode(json_encode($qr_permission), true);
        return $permissions;
    }
}
