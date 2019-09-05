<?php



namespace App\Http\Controllers\teamilk;



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

use File;

use App\func_global;



class ProductController extends Controller

{

    /**

     * Display a listing of the resource.

     *

     * @return \Illuminate\Http\Response

     */

    public function index()

    {

        //

    }



    /**

     * Show the form for creating a new resource.

     *

     * @return \Illuminate\Http\Response

     */

    public function create()

    {

        //

    }



    /**

     * Store a newly created resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @return \Illuminate\Http\Response

     */

    public function store(Request $request)

    {

        //

    }



    /**

     * Display the specified resource.

     *

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */

    public function show($idproduct)

    {

        $_namecattype="product";

        $_idstore = 31;

        $qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($idproduct));

        $cate_selected = json_decode(json_encode($qr_cateselected), true);

        $qr_size = DB::select('call SelAllSizeProcedure');

        $size = json_decode(json_encode($qr_size), true);

        //$qr_product = DB::select('call DetailByIdProductProcedure(?)',array($idproduct));

        //$product = json_decode(json_encode($qr_product), true);

        $qr_product = DB::select('call SelProductByIdProcedure(?,?)',array($idproduct,$_idstore));

        $product = json_decode(json_encode($qr_product), true);

        $_idgallery = 2;

        $qr_gallery = DB::select('call SelGalleryProcedure(?,?)',array($idproduct,$_idgallery));

        $gallery = json_decode(json_encode($qr_gallery), true);



        $_idcombo = 1;

        $qr_sel_combo_byidproduct = DB::select('call SelCrossProductByIdProcedure(?,?)',array($idproduct,$_idcombo));

        $sel_combo_byidproduct = json_decode(json_encode($qr_sel_combo_byidproduct), true);

        $_idgift = 2;

        $qr_sel_gif_byidproduct = DB::select('call SelCrossProductByIdProcedure(?,?)',array($idproduct,$_idgift));

        $sel_gift_byidproduct = json_decode(json_encode($qr_sel_gif_byidproduct), true);

        $_idrelative = 3;

        $qr_sel_relative_byidproduct = DB::select('call SelCrossProductByIdProcedure(?,?)',array($idproduct,$_idrelative));

        $sel_relative_byidproduct = json_decode(json_encode($qr_sel_relative_byidproduct), true);

        return view('teamilk.product.show',compact('sel_relative_byidproduct','gallery','product','categories','idproduct','sel_combo_byidproduct','sel_gift_byidproduct','cate_selected'));

    }



    /**

     * Show the form for editing the specified resource.

     *

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */

    public function edit($id)

    {

        //

    }



    /**

     * Update the specified resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */

    public function update(Request $request, $id)

    {

        //

    }



    /**

     * Remove the specified resource from storage.

     *

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */

    public function destroy($id)

    {

        //

    }

    //show sub category

    public function change_price_idproduct(){

        $input = json_decode(file_get_contents('php://input'),true);

        $_idproduct = $input['idproduct'];       

        try {

            $qr_price = DB::select('call ChangePriceByIdProductProcedure(?)',array($_idproduct));

            $rs_price = json_decode(json_encode($qr_price), true);     

            return response()->json($rs_price); 

        } catch (\Illuminate\Database\QueryException $ex) {

            $errors = new MessageBag(['error' => $ex->getMessage()]);

            return response()->json($errors); 

        }

    }

    public function listviewproductbyidcate($_idcategory){

        try {

            $qr_lpro = DB::select('call ListViewProductByIdCateProcedure(?)',array($_idcategory));

            $rs_lpro = json_decode(json_encode($qr_lpro), true);     

            //return redirect()->route('teamilk.product.index')->with('error',$errors);

             return view('teamilk.product.index')->with(compact('rs_lpro','_idcategory'));

        } catch (\Illuminate\Database\QueryException $ex) {

            $errors = new MessageBag(['error' => $ex->getMessage()]);

            //return redirect()->route('teamilk.product.index')->with('error',$errors);

            return view('teamilk.product.index')->with('error',$errors);

        }

    }

    public function orderhistory(Request $request){
        $input = json_decode(file_get_contents('php://input'),true);
        $_idproduct = $input['idproduct'];
        $_quality = $input['quality'];
        $_userid_order = $input['userid_order'];
        $_idstore = 31;
        //$qr_orderhis = DB::select('call OrderHistoryProcedure(?,?,?)',array($_userid_order,$_idproduct,$_quality));
        //$idorderhistory = json_decode(json_encode($qr_orderhis), true);

        //$idorderhis = $idorderhistory[0]['idorderhistory'];
        $idorderhis = 1;
        $str_session = session()->get('idorderhistory');
        $_trash = 1;
	    // if(!empty($arr_his)){
	    // 	$Object = json_decode($arr_his,true);
     //        $idorder = count($Object)+1;
	    // 	$Object[] = ['idorder'=>$idorder,'idcrosstype'=>0,'parent'=>0,'id'=>0,'input_quality'=>$_quality,'idproduct' => $_idproduct,'inp_session'=>1,'trash' => 1];
	    // 	$str_Object = json_encode($Object);
	    // }else{	    	
	    // 	$str_Object = '[{"idorder":1,"idcrosstype":0,"parent":0,"id":0,"input_quality":'.$_quality.',"idproduct":'.$_idproduct.',"inp_session":1,"trash":1}]';
	    // }
	    // session()->put('idorderhistory', $str_Object);
        // $str_session = session()->get('idorderhistory');
        // $Object = json_decode($str_session);
        // $str_qr="";
        // foreach ($Object as $itemt) {
        //     $str_qr .='('.$itemt->idproduct.','.$itemt->input_quality.'),';
        // }
        // $str_qr = substr_replace($str_qr ,"", -1);
            $str_session = session()->get('idorderhistory');
            $str_item ="";
            $idorder = 1;
            $parent = 0;
        if(empty($str_session)){
            $_str_query = 'INSERT into tmp_product(idproduct,input_quality) VALUES ('.$_idproduct.','.$_quality.')';
            $qr_initsession = DB::select('call LoadOrderInitSessionProcedure(?,?,?)',array($_str_query, $_idstore,$idorder));
            $rs_initsession = json_decode(json_encode($qr_initsession), true);
            foreach ($rs_initsession as $row) {
                $str_item .= '{"idorder":'.$row['idorder'].',"idcrosstype":'.$row['idcrosstype'].',"parent":'.$row['parent'].',"id":'.$row['id'].',"input_quality":'.$row['input_quality'].',"idproduct":'.$row['idproduct'].',"inp_session":'.$row['inp_session'].',"trash":1},';
                $idorder++;
            }
            $str_item = substr_replace($str_item ,"", -1);
            $str_item = "[".$str_item."]";
        }else{
            $Object = json_decode($str_session,true);
            $idorder = count($Object)+1;
            $_str_query = 'INSERT into tmp_product(idproduct,input_quality) VALUES ('.$_idproduct.','.$_quality.')';
            $qr_initsession = DB::select('call LoadOrderInitSessionProcedure(?,?,?)',array($_str_query, $_idstore,$idorder));
            $rs_initsession = json_decode(json_encode($qr_initsession), true);
            foreach ($rs_initsession as $row) {
                $Object[] = ['idorder'=>$row['idorder'],'idcrosstype'=>$row['idcrosstype'],'parent'=>$row['parent'],'id'=>$row['id'],'input_quality'=>$row['input_quality'],'idproduct' => $row['idproduct'],'inp_session'=>$row['inp_session'],'trash' => 1];
                $idorder++;
            }
            $str_item = json_encode($Object);  
        }
        session()->put('idorderhistory', $str_item);
        $arr_session = array();
        $arr_session[] = array('idorderhistory' => $idorderhis );
        return response()->json($arr_session);
    }
    //change quality session
    public function changequality(Request $request){
        $input = json_decode(file_get_contents('php://input'),true);
        $_idorder = $input['idorder'];
        $_quality = $input['quality'];
        $_userid_order = $input['userid_order'];
        $str_Object = session()->get('idorderhistory');
        $data = json_decode($str_Object,true);
        foreach($data as $key => $value){
            if($data[$key]['idorder']==$_idorder){
                $data[$key]['inp_session'] = $_quality;
            }
        }
         $str_item = json_encode($data); 
         session()->put('idorderhistory', $str_item);
         return response()->json($str_item);
    }
     public function remove_item(Request $request){

        $input = json_decode(file_get_contents('php://input'),true);

        $_idproduct = $input['idproduct'];

        $_quality = $input['quality'];

        $_userid_order = $input['userid_order'];

        //$qr_orderhis = DB::select('call OrderHistoryProcedure(?,?,?)',array($_userid_order,$_idproduct,$_quality));

        //$idorderhistory = json_decode(json_encode($qr_orderhis), true);
        //$idorderhis = $idorderhistory[0]['idorderhistory'];

        $arr_his = session()->get('idorderhistory');
        $_trash = 1;
        if(isset($arr_his)){
            $Object = json_decode($arr_his,true);
            $Object[] = ['idproduct' => $_idproduct,'quality' => $_quality,'trash' => $_trash];
            $str_Object = json_encode($Object);
        }
        session()->put('idorderhistory', $str_Object);
        //session()->save();
        return response()->json($idorderhistory);
    }

     public function delete_session(Request $request){

        $request->session()->forget('idorderhistory');

         return view('teamilk.product.index');

     }

     public function get_sesstion(Request $request){

        $_session = $request->session()->get('idorderhistory');

         return view('teamilk.product.index')->with(compact('_session',$_session));

     }

     

}

