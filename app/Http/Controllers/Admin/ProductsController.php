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
class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private $main_menu="";
    public function index()
    {
         try {
            $_start_date= date('Y-m-d H:i:s',strtotime("-60 days"));
            $_end_date = date('Y-m-d H:i:s');
            $_idstore = 31;
            $_idcategory=0;$_id_post_type=0;$_id_status_type=0;$_sel_receive = 0;
            $rs_selected = array('_start_date'=>$_start_date,'_end_date'=>$_end_date,'_idcategory'=>$_idcategory,'_id_post_type'=>$_id_post_type,'_id_status_type'=>$_id_status_type,'_sel_receive'=>$_sel_receive);
            $list_selected = json_encode($rs_selected);
            $result = DB::select('call ListAllProductProcedure(?,?,?,?,?,?)',array($_start_date,$_end_date, $_idcategory, $_id_post_type, $_id_status_type,$_idstore));
            $products = json_decode(json_encode($result), true);     
            return view('admin.product.index',compact('products','list_selected'));

        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['error' => $ex->getMessage()]);
            return redirect()->route('admin.product.index')->with('error',$errors);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request,$idcrossproduct=0,$idcrosstype=0)
    {
        $_namecattype="product";
        //$qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($idproduct));
        //$cate_selected = json_decode(json_encode($qr_cateselected), true);
        $cate_selected[0]['idcategory']=0;
        $str = $this->all_category($_namecattype,$cate_selected);
        $statustypes = status_type::all()->toArray();
        $posttypes = PostType::all()->toArray();
        $qr_size = DB::select('call SelAllSizeProcedure');
        $size = json_decode(json_encode($qr_size), true);
        $qr_color = DB::select('call SelAllColorProcedure');
        $color = json_decode(json_encode($qr_color), true);
        $_namecattype = "product";
        $result = DB::select('call ListParentCatByTypeProcedure(?)',array($_namecattype));
        $categories = json_decode(json_encode($result), true);
        $qr_cross_type = DB::select('call SelCrossTypeProcedure');
        $sel_cross_type = json_decode(json_encode($qr_cross_type), true);
        return view('admin.product.create',compact('posttypes','categories','statustypes','str','size','color','idcrossproduct','idcrosstype','sel_cross_type'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $posttypes = PostType::all()->toArray();
        $_idemployee = Auth::id();
        $_idcustomer = '0';$_amount= '0'; $_price='0';$_note =""; $_idstore= 31;$_axis_x='0';$_axis_y='0'; $_axis_z='0'; $message ="";
        $_idthumbnail = 1;$_idgallery = 2;
        $_idcrosstype = $request->get('idcrosstype'); $_idparent = $request->get('idparent');
        $_idcrosstype = (isset($_idcrosstype)&&$_idcrosstype > 0) ? $_idcrosstype:0;
        $_idparent = (isset($_idparent)&&$_idparent > 0) ? $_idparent:0;
        $func_global = new func_global();
        try {
            $_namepro = $request->get('title');
            $title_strip = $func_global->stripVN($_namepro);
            $title_strip = preg_replace('/[ ](?=[ ])|[^-_,A-Za-z0-9 ]+/', '', $title_strip);
            $title_strip = strtolower($title_strip); 
            $_slug = preg_replace('/\s+/', '-', $title_strip);
            $_description = $request->get('body');
            $_id_post_type = $request->get('sel_idposttype');
            $_id_status_type = $request->get('sel_idstatustype');
            $_price_import = $request->get('price_import');
            $_price_sale_origin = $request->get('price_sale_origin');
            $_price = $request->get('price');
            $_price_combo = $request->get('price_combo');
            $_quality_combo = $request->get('quality_combo');
            $_price_gift = $request->get('price_gift');
            $_quality_gift = $request->get('quality_gift');
            $_short_desc = $request->get('short_desc');
            $_amount = $request->get('amount');
            $_idsize = $request->get('size');
            $_idcolor = $request->get('color');
            $validator = Validator::make($request->all(), [
                'title' => 'required', 
                'body' => 'required'
            ]);
            if ($validator->fails()) {
                $errors = $validator->errors();
                return redirect()->route('admin.product.create')->with(compact('errors'));           
            }
            //create product
            $product = new Products(['namepro'=> $_namepro,'slug'=> $_slug,'short_desc'=> $_short_desc,'description'=>$_description,'idsize'=>$_idsize,'idcolor'=>$_idcolor,'id_post_type'=>$_id_post_type]);
            $product->save();
  
            $idproduct = $product->idproduct;
            $list_checks = $request->input('list_check');
            $_list_idcat="";
            if($list_checks){
                foreach ($list_checks as $item) {
                  //$iditem = explode("-",$item);
                  $idcategory = $item;
                  $_list_idcat .= "(".$idproduct.",".$idcategory."),";
                } 
                $_list_idcat = rtrim($_list_idcat,", ");
                $prodbelongcate = DB::select('call ProductBelongCategoryProcedure(?)',array($_list_idcat));
            }
             if($request->hasfile('thumbnail')) {
                        $file = $request->file('thumbnail');
                        $_name_origin = $file->getClientOriginalName();
                        //$file->move(public_path().'/images/', $name);  
                        $_typefile = $file->getClientOriginalExtension();
                        $dir = 'uploads/';
                        $path = base_path($dir . date('Y') . '/'.date('m').'/'.date('d').'/');
                        $_urlfile = $dir . date('Y') . '/'.date('m').'/'.date('d').'/';
                        if(!File::exists($path)) {
                            File::makeDirectory($path, 0777, true, true);
                        }     
                        $_namefile = date('Ymd').'_'.time().'_'.uniqid().'.'.$_typefile;
                        $file->move($path, $_namefile);
                        $_urlfile .= $_namefile;
                        
                        //$_list_file .= "'".$path_relative."','".$name_origin."','".$filename."','".$typefile."';";
                        DB::select('call ProducthasFileProcedure(?,?,?,?,?,?)',array($_urlfile, $_name_origin, $_namefile , $_typefile, $idproduct,$_idthumbnail));                
             }    
            
             if($request->hasfile('file_attach')) {
                foreach($request->file('file_attach') as $file) {
                    $_name_origin = $file->getClientOriginalName();
                    //$file->move(public_path().'/images/', $name);  
                    $_typefile = $file->getClientOriginalExtension();
                    $dir = 'uploads/';
                    $path = base_path($dir . date('Y') . '/'.date('m').'/'.date('d').'/');
                    $_urlfile = $dir . date('Y') . '/'.date('m').'/'.date('d').'/';
                    if(!File::exists($path)) {
                        File::makeDirectory($path, 0777, true, true);
                    }     
                    $_namefile = date('Ymd').'_'.time().'_'.uniqid().'.'.$_typefile;
                    $file->move($path, $_namefile);
                    $_urlfile .= $_namefile;
                    DB::select('call ProducthasFileProcedure(?,?,?,?,?,?)',array($_urlfile, $_name_origin, $_namefile , $_typefile, $idproduct,$_idgallery));
                }
             }
             
            $_catnametype = 'store'; $_shortname = 'import';
            $insertproduct = DB::select('call ImportProductProcedure(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',array($idproduct, $_idcustomer, $_idemployee, $_idcrosstype, $_idparent, $_amount, $_price_import, $_price, $_price_sale_origin,$_price_combo, $_quality_combo,$_price_gift, $_quality_gift, $_note, $_axis_x, $_axis_y, $_axis_z, $_id_status_type, $_catnametype, $_shortname));
            //insert cross product
            
            //if($_idcrosstype > 0 && $_idparent > 0){
                //$insert_crossproduct = DB::select('call InsertCrossProductProcedure(?,?,?)',array($_idparent,$_idcrosstype,$idproduct));
            //}
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['error' => $ex->getMessage()]);
            return redirect()->back()->withInput()->withErrors($errors);
        }
        $message = "success ".$_list_idcat;
        return redirect()->action('Admin\ProductsController@edit',$idproduct)->with('success',$message);
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
    public function edit($idproduct) {
        $_namecattype="product";
        $_idstore = 31;
        $qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($idproduct));
        $cate_selected = json_decode(json_encode($qr_cateselected), true);
        $str = $this->all_category($_namecattype, $cate_selected );
        $statustypes = status_type::all()->toArray();
        $posttypes = PostType::all()->toArray();
        $result = DB::select('call ListParentCatByTypeProcedure(?)',array($_namecattype));
        $categories = json_decode(json_encode($result), true);
        $qr_product = DB::select('call SelProductByIdProcedure(?,?)',array($idproduct,$_idstore));
        $product = json_decode(json_encode($qr_product), true);
        $_idgalery = 2;
        $qr_gallery = DB::select('call SelGalleryProcedure(?,?)',array($idproduct,$_idgalery));
        $gallery = json_decode(json_encode($qr_gallery), true);

        $qr_size = DB::select('call SelAllSizeProcedure');
        $size = json_decode(json_encode($qr_size), true);

        $qr_color = DB::select('call SelAllColorProcedure');
        $color = json_decode(json_encode($qr_color), true);
        $qr_sel_cross_byidproduct = DB::select('call SelProductCrossByIdProcedure(?)',array($idproduct));
        $sel_cross_byidproduct = json_decode(json_encode($qr_sel_cross_byidproduct), true);
        
        $qr_sel_impbyidpro = DB::select('call SelImportByIDProductProcedure(?)',array($idproduct));
        $rs_sel_impbyidpro = json_decode(json_encode($qr_sel_impbyidpro), true);
        
        $qr_parent_cross_product = DB::select('call SelParentProductCrossProcedure(?)',array($idproduct));
        $sel_parent_cross_product = json_decode(json_encode($qr_parent_cross_product), true);

        $qr_cross_type = DB::select('call SelCrossTypeProcedure');
        $sel_cross_type = json_decode(json_encode($qr_cross_type), true);
       
        return view('admin.product.edit',compact('gallery','product','posttypes','categories','statustypes','str','idproduct','size','color','sel_cross_byidproduct','sel_parent_cross_product','sel_cross_type','rs_sel_impbyidpro'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idproduct)
    {
        $posttypes = PostType::all()->toArray();
        $_iduser = Auth::id();
        $_idcustomer = '0';$_note =""; $_idstore= '31';$_axis_x='0';$_axis_y='0'; $_axis_z='0';$message ="";
        $func_global = new func_global();
        try {
            $_namepro = $request->get('title');
            $title_strip = $func_global->stripVN($_namepro);
            $title_strip = preg_replace('/[ ](?=[ ])|[^-_,A-Za-z0-9 ]+/', '', $title_strip);
            $title_strip = strtolower($title_strip); 
            $_slug = preg_replace('/\s+/', '-', $title_strip);
            
            $validator = Validator::make($request->all(), ['title' => 'required', 'body' => 'required']);
            if ($validator->fails()) {
                $errors = $validator->errors();
                return redirect()->route('admin.product.edit')->with(compact('errors'));           
            }
            $_idimp = $request->get('idimp');
            $_id_status_type = $request->get('sel_idstatustype');
            $_amount = $request->get('amount');
            $_price_import = $request->get('price_import');
            $_price_sale_origin = $request->get('price_sale_origin');
            $_price = $request->get('price');
            $_price_combo = $request->get('price_combo');
            $_quality_combo = $request->get('quality_combo');
            $_price_gift = $request->get('price_gift');
            $_quality_gift = $request->get('quality_gift');
            //update product
            $_namepro = $request->get('title');
            $_short_desc = $request->get('short_desc');
            $_description = $request->get('body');
            $_id_post_type = $request->get('sel_idposttype');
            $_idcolor = $request->get('idcolor');
            $_idsize = $request->get('idsize');
            $product = Products::find($idproduct);
            $product->namepro = $_namepro;
            $product->slug = $_slug;
            $product->short_desc = $_short_desc;
            $product->description = $_description;
            $product->id_post_type = $_id_post_type;
            $product->idcolor = $_idcolor;
            $product->idsize = $_idsize;
            $product->save();
            //update category belong product
            $qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($idproduct));
            $cate_selected = json_decode(json_encode($qr_cateselected), true);
            $list_checks = $request->input('list_check');
            $list_key = "";
            $_list_idcat="";
            $selected = 0;
            //$list_checked = array();
            if($list_checks){
                foreach ($list_checks as $item) {
                  $idcategory = $item;
                  $list_checked[] = $idcategory;
                }
                foreach ($cate_selected as $key =>$item) {
                    $s = $item['idcategory'];
                    $result_key = $this->find_list($list_checks,$s);
                    if($result_key < 0){
                        DB::select('call UpdateCatehasproProcedure(?)',array($item['idcateproduct']));
                        //$selected++;  
                    }else{
                        unset($list_checks[$result_key]);
                    }
                } 
            }                  
            //$_list_idcat = rtrim($_list_idcat,", ");           
            if($list_checks){
                foreach ($list_checks as $item) {
                  //$iditem = explode("-",$item);
                  $idcategory = $item;
                  $_list_idcat .= "(".$idproduct.",".$idcategory."),";
                }
                $_list_idcat = rtrim($_list_idcat,", ");
                $prodbelongcate = DB::select('call ProductBelongCategoryProcedure(?)',array($_list_idcat)); 
            }
             $_idthumbnail = 1;
             if($request->hasfile('thumbnail')) {
                        $file = $request->file('thumbnail');
                        $_name_origin = $file->getClientOriginalName();
                        //$thumbnail = $_name_origin;
                        $_typefile = $file->getClientOriginalExtension();
                        $dir = 'uploads/';
                        $path = base_path($dir . date('Y') . '/'.date('m').'/'.date('d').'/');
                        $_urlfile = $dir . date('Y') . '/'.date('m').'/'.date('d').'/';
                        if(!File::exists($path)) {
                            File::makeDirectory($path, 0777, true, true);
                        }     
                        $_namefile = date('Ymd').'_'.time().'_'.uniqid().'.'.$_typefile;
                        $file->move($path, $_namefile);
                        $_urlfile .= $_namefile;
                        DB::select('call ProducthasFileProcedure(?,?,?,?,?,?)',array($_urlfile, $_name_origin, $_namefile , $_typefile, $idproduct,$_idthumbnail));   
             }
             $list_file = "";
             $_idgalery = 2;
             if($request->hasfile('file_attach')) {
                $edit_gallery = $request->input('edit-gallery');
                if($edit_gallery){
                    foreach ($edit_gallery as $idproducthasfile) {
                        DB::select('call TrashGelleryProcedure(?)',array($idproducthasfile));
                    }
                }
                foreach($request->file('file_attach') as $file) {
                    $_name_origin = $file->getClientOriginalName();
                    $_typefile = $file->getClientOriginalExtension();
                    $dir = 'uploads/';
                    $path = base_path($dir . date('Y') . '/'.date('m').'/'.date('d').'/');
                    $_urlfile = $dir . date('Y') . '/'.date('m').'/'.date('d').'/';
                    if(!File::exists($path)) {
                        File::makeDirectory($path, 0777, true, true);
                    }     
                    $_namefile = date('Ymd').'_'.time().'_'.uniqid().'.'.$_typefile;
                    $file->move($path, $_namefile);
                    $_urlfile .= $_namefile;
                    DB::select('call ProducthasFileProcedure(?,?,?,?,?,?)',array($_urlfile, $_name_origin, $_namefile , $_typefile, $idproduct,$_idgalery));
                }             
             }
             //$_idimp,$_idcustomer,$_iduser,$_amount,$_price_import,$_price,$_price_sale_origin,$_quality_sale,$_note,$_idstore,$_axis_x,$_axis_y,$_axis_z,$_id_status_type
            $updateproduct = DB::select('call UpdateImportProductProcedure(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',array($_idimp,$_idcustomer,$_iduser,0,$_amount,$_price_import,$_price,$_price_sale_origin,0,$_note,$_idstore,$_axis_x,$_axis_y,$_axis_z,$_id_status_type));
            $_idimpcross = $request->get('idimpcross');
            $l_idimpcross = $request->get('l_idimpcross');
            if(!empty($l_idimpcross)){
                $l_sel_cross = $request->get('l_sel_cross');
                $l_idparentcross = $request->get('l_idparentcross');
                $l_price_sale = $request->get('l_price_sale');
                $l_quality_sale = $request->get('l_quality_sale');
                $str_qr = "";
                foreach( $l_idimpcross as $key => $_idimpcro ) {
                        $_idimpcross = $_idimpcro;
                        $_sel_cross = $l_sel_cross[$key];
                        $_idparentcross = $l_idparentcross[$key];
                        $_price_sale = $l_price_sale[$key];
                        $_quality_sale =$l_quality_sale[$key];
                        $str_qr .= "(".$_idimpcross.",".$_idparentcross.",".$_sel_cross.",".$_price_sale.",".$_quality_sale."),";
                }
                $str_qr = substr_replace($str_qr ,"", -1);
                $str_qr = "INSERT into tmp_import(idimp, idcrosstype, price, quality_sale) VALUES ".$str_qr;
                //$updateproductcross = DB::select('call UpdateImportProductProcedure(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',array($_idimpcross,$_idcustomer,$_iduser,$_sel_cross,$_amount,$_price_import,$_price_sale,$_price_sale_origin,$_quality_sale,$_note,$_idstore,$_axis_x,$_axis_y,$_axis_z,$_id_status_type));
                $updateproductcross = DB::select('call UpdateImpProductProcedure(?)',array($str_qr));
                return redirect()->action('Admin\ProductsController@edit',[$idproduct,'idimpcross' => $_idimpcross ])->with(compact('getlist'));
            }   
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['error' => $ex->getMessage()]);
            return redirect()->back()->withInput()->withErrors($errors);
        }
        $message = "success";
        return redirect()->action('Admin\ProductsController@edit',$idproduct)->with('getlist',$str_qr);
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
    public function all_category($_namecattype, $_cate_selected) {
        $result = DB::select('call ListAllCatByTypeProcedure(?)',array($_namecattype));
        $categories = json_decode(json_encode($result), true);
        $this->showCategories($categories,0,'',$_cate_selected);
        return $this->main_menu;
    }
 
    public function categorybyid($_cattype='product', $_idcat=0 , $_idproduct = 0) {
        $qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($_idproduct));
        $_cate_selected = json_decode(json_encode($qr_cateselected), true);
        //if($_idproduct > 0){
            //$qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($_idproduct));
            //$_cate_selected = json_decode(json_encode($qr_cateselected), true);
        if(isset($_cate_selected)){
            $_cate_selected[0]['idcategory'] = 0;
        }
        $result = DB::select('call ListAllCatByTypeProcedure(?)',array($_cattype));
        $categories = json_decode(json_encode($result), true);
        $str_ul="";$str_li="";
        if($_idcat > 0){
           $this->showCategories($categories, $_idcat,'',$_cate_selected);
           $s_catename = DB::select('call SelRowCategoryByIdProcedure(?)',array($_idcat));
           $r_catename = json_decode(json_encode($s_catename), true);
           foreach ($r_catename as $item) {
               $selected = ($this->compare_in_list($_cate_selected,$item['idcategory']) >0) ? 'checked' : '';
               $str_li = '<li><input type="checkbox" name="list_check[]" value="'.$item['idcategory'].'"'.$selected.'>'.$item['namecat'];
            }
       }else{
           $this->showCategories($categories, 0,'',$_cate_selected);
       }      
        $str_html = '<ul class="list-check">'.$str_li.$this->main_menu."</li></ul>";
        $result = json_decode(json_encode($str_html), true);     
        return response()->json($result); 
    }
    public function listcategorybyid($_cattype='product', $_idcat=0 , $_idproduct = 0) {
        $qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($_idproduct));
        $_cate_selected = json_decode(json_encode($qr_cateselected), true);
        //if($_idproduct > 0){
            //$qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($_idproduct));
            //$_cate_selected = json_decode(json_encode($qr_cateselected), true);
        if(isset($_cate_selected)){
            $_cate_selected[0]['idcategory'] = 0;
        }
        $result = DB::select('call ListAllCatByTypeProcedure(?)',array($_cattype));
        $categories = json_decode(json_encode($result), true);
        $str_ul="";$str_li="";
        if($_idcat > 0){
           $this->showCategories($categories, $_idcat,'',$_cate_selected);
           $s_catename = DB::select('call SelRowCategoryByIdProcedure(?)',array($_idcat));
           $r_catename = json_decode(json_encode($s_catename), true);
           foreach ($r_catename as $item) {
               $selected = ($this->compare_in_list($_cate_selected,$item['idcategory']) >0) ? 'checked' : '';
               $str_li = '<li><input class="listcheck" type="checkbox" name="list_check[]" value="'.$item['idcategory'].'"'.$selected.'>'.$item['namecat'];
            }
       }else{
           $this->showCategories($categories, 0,'',$_cate_selected);
       }      
        $str_html = '<ul class="list-check">'.$str_li.$this->main_menu."</li></ul>";
        $result = json_decode(json_encode($str_html), true);     
        return response()->json($result); 
    }
    public function showCategories($categories, $idparent = 0, $char = '', $_cate_selected)
    {
        $cate_child = array();
        foreach ($categories as $key => $item)
        {
            if ($item['idparent'] == $idparent)
            {
                $cate_child[] = $item;
                unset($categories[$key]);
            }
        }
        $list_cat="";       
        if ($cate_child)
        {
            $this->main_menu .= '<ul class="list-check">';
            foreach ($cate_child as $key => $item)
            {
                // Hiển thị tiêu đề chuyên mục
                $selected = ($this->compare_in_list($_cate_selected,$item['idcategory']) > 0) ? ' checked' : '';
                //$idcateproduct = $this->compare_in_list($_cate_selected,$item['idcategory']);
                //$this->main_menu .= '<li><input type="checkbox" name="list_check[]" value="'.$item['idcategory'].'-'.$idcateproduct.'"'.$selected.'>'.$item['namecat'].":".$list_cat;
                $this->main_menu .= '<li><input class="checklist" type="checkbox" name="list_check[]" value="'.$item['idcategory'].'"'.$selected.'>'.$item['namecat'].":".$list_cat;
                // Tiếp tục đệ quy để tìm chuyên mục con của chuyên mục đang lặp
                $this->showCategories($categories, $item['idcategory'], $char.'|---', $_cate_selected);
                $this->main_menu .= '</li>';
            }
            $this->main_menu .= '</ul>';
        }
    }
    public function compare_in_list($_cate_selected, $x = 0){
        foreach ($_cate_selected as $item)
        {
           if($x == $item['idcategory']) return $item['idcateproduct'];
        }
        return 0;
    }
    public function find_list($list_check = array(), $s=0){
        foreach ($list_check as $key=>$value) {
            if($s==$value) return $key;              
        }
        return -1;
    }
    public function trash(){
        $input = json_decode(file_get_contents('php://input'),true);
        $_idproducthasfile = $input['idproducthasfile'];       
        try {
            $qr_delete = DB::select('call DeleteProducthasFileProcedure(?)',array($_idproducthasfile));
            $result = json_decode(json_encode(array("success")), true);     
            return response()->json($result); 
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['error' => $ex->getMessage()]);
            return response()->json($errors); 
        }
    }
    public function crossproduct(Request $request, $idproduct){
        $_cross_description = $request->get('cross_description');
        $_cross_short_desc = $request->get('cross_short_desc');
        $_cross_slug = $request->get('cross_slug');
        $_cross_namepro = $request->get('cross_namepro');
        $_cross_idsize = $request->get('cross_idsize');
        $_cross_idcolor = $request->get('cross_idcolor');
        $_cross_price = $request->get('cross_price');
        $_cross_sel_idposttype = $request->get('cross_sel_idposttype');
        $_cross_id_thumbnail = $request->get('cross_id_thumbnail');
        $_iduser = Auth::id();
        $_idcustomer=0; $_amount = 0; $_note = ""; $_idstore = 11; $_axis_x = 0; $_axis_y = 0; $_axis_z=0; $_id_status_type = 3;
        try {
            $product = new Products(['namepro'=> $_cross_namepro,'slug'=> $_cross_slug,'short_desc'=> $_cross_short_desc,'description'=>$_cross_description,'idsize'=>$_cross_idsize,'idcolor'=>$_cross_idcolor,'id_post_type'=>$_cross_sel_idposttype]);
            $product->save();
            $cross_idproduct = $product->idproduct;
            $_crosstype = "crosssize";
            $qr_cross_hasfile = DB::select('call CrossProductHasFileProcedure(?,?,?,?)',array($idproduct,$cross_idproduct,$_cross_id_thumbnail,$_crosstype));

            $qr_cateselected = DB::select('call SelCateSelectedProcedure(?)',array($idproduct));
            $cate_selected = json_decode(json_encode($qr_cateselected), true);
            $_list_idcat = "";
            foreach ($cate_selected as $key =>$item) {
                    $_idcategory = $item['idcategory'];
                    if($_idcategory > 0){
                        $_list_idcat .= "(".$cross_idproduct.",".$_idcategory."),";
                    }
            } 
            $_list_idcat = rtrim($_list_idcat,", ");
            $prodbelongcate = DB::select('call ProductBelongCategoryProcedure(?)',array($_list_idcat));
            $insertproduct = DB::select('call ImportProductProcedure(?,?,?,?,?,?,?,?,?,?,?)',array($cross_idproduct, $_idcustomer, $_iduser, $_amount, $_cross_price, $_note, $_idstore, $_axis_x, $_axis_y, $_axis_z, $_id_status_type));
            $message = "Add product has added ".$cross_idproduct.",".$_list_idcat;
            return redirect()->action('Admin\ProductsController@edit',$idproduct)->with('success',$message);     
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['error' => $ex->getMessage()]);
            return redirect()->action('Admin\ProductsController@edit',$idproduct)->with('success',$errors);
        }
        $message = "$cross_idproduct ".$cross_idproduct;
        return redirect()->action('Admin\ProductsController@edit',$idproduct)->with('success',$message);
    }
    //menu
    public function show_data_menu(){
        $result = DB::select('call ListAllCatByTypeProcedure(?)',array($_cattype));
        $categories = json_decode(json_encode($result), true);
    }
    public function show_menu() {
        
        $result = DB::select('call ListAllCatByTypeProcedure(?)',array($_cattype));
        $categories = json_decode(json_encode($result), true);
        $str_ul="";$str_li="";
        $this->show_all_menu($categories, 0,'',$_cate_selected);       
        $str_html = '<ul class="list-check">'.$str_li.$this->main_menu."</li></ul>";    
        return $str_html; 
    }

    public function show_all_menu($categories, $idparent = 0, $char = '', $_cate_selected) {
        $cate_child = array();
        foreach ($categories as $key => $item) {
            if ($item['idparent'] == $idparent) {
                $cate_child[] = $item;
                unset($categories[$key]);
            }
        }
        $list_cat="";       
        if ($cate_child) {
            $this->main_menu .= '<ul class="list-check">';
            foreach ($cate_child as $key => $item) {
                // Hiển thị tiêu đề chuyên mục
                $this->main_menu .= '<li><input type="checkbox" name="list_check[]" value="'.$item['idcategory'].'">'.$item['namecat'].":".$list_cat;
                // Tiếp tục đệ quy để tìm chuyên mục con của chuyên mục đang lặp
                $this->show_all_menu($categories, $item['idcategory'], $char.'|---', $_cate_selected);
                $this->main_menu .= '</li>';
            }
            $this->main_menu .= '</ul>';
        }
    }
    public function listproductbyidcate(Request $request){
        $input = json_decode(file_get_contents('php://input'),true);
        $str_lstidcate = $input['list_idcate'];
        $lst_idcate = json_decode($str_lstidcate);
        $_str_query = "";
        $urlpath = asset('/');
        if(empty($lst_idcate)){
            return response()->json($strlst);
        }
        foreach ($lst_idcate as $item) {
            $_str_query .= '('.$item->idcate.'),';
        }
        $_str_query = substr_replace($_str_query ,"", -1);
        $_str_query = "insert INTO tmp_cate(idcate) VALUES ".$_str_query;   
        try {
            $qr_lst = DB::select('call ListProductByLstIdCateProcedure(?)',array($_str_query));
            $rs_lstcate = json_decode(json_encode($qr_lst));
            $strlst = "";
            foreach ($rs_lstcate as $item) {
            $url = action('Admin\ProductsController@edit', ['idproduct' => $item->idproduct]);
            $strlst .= '<li><input class="listcheck" type="checkbox" value="'.$item->idproduct.'"><img src="'.$urlpath.$item->urlfile.'"><label><a target="_blank" href="'.$url.'">'.$item->namepro.'</a></label><p>&nbsp;&nbsp;('.$item->price.')</p></li>';  
            }     
            return response()->json($strlst); 
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['error' => $ex->getMessage()]);
            $errors = "";
            return response()->json($errors); 
        }
    }
}
