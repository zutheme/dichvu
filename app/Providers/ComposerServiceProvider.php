<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
//use Auth; 
use Validator;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Facades\DB;
// use App\Http\Controllers\ControllerName;
class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    private $main_menu;
    public function boot()
    {
        //View::composer(['admin.dashboard','dashboard'], function ($view) {
        View::composer(array('teamilk.master','teamilk.product.show','teamilk.product.index','teamilk.account.profile','teamilk.addcart.check-out','teamilk.menu-master','admin.dashboard','admin.topnav','admin.sidebar'), function ($view) {
            $_namecattype="website";
            $rs_catbytype = DB::select('call ListAllCatByTypeProcedure(?)',array($_namecattype));
            $catbytypes = json_decode(json_encode($rs_catbytype), true);
            $iduser = Auth::id();
            $qr_select_profile = DB::select('call SelectProfileProcedure(?)',array($iduser));
            $profile = json_decode(json_encode($qr_select_profile), true);
            //list store
            $_namecattype = "store";
            $qr_store = DB::select('call ListAllCatByTypeProcedure(?)',array($_namecattype));
            $stores = json_decode(json_encode($qr_store), true);
            //$_cattype = "product";
            $qr_cat_product = DB::select('call ListAllCatByTypeProcedure(?)',array('product'));
            $rs_cat_product = json_decode(json_encode($qr_cat_product), true);
            //menu
            $idmenu = 1;
            $qr_menu = DB::select('call ListItemCateByIdMenuProcedure(?)',array($idmenu));
            $rs_menu = json_decode(json_encode($qr_menu), true);
            //category by name
            $str_dashboard = $this->CategoryBynametype('dashboard');
            $view->with(compact('stores','catbytypes','profile','iduser','rs_cat_product','rs_menu','str_dashboard'));
        });
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
    public function CategoryBynametype($_namecattype){
       
        $result = DB::select('call ListAllCatByTypeProcedure(?)',array($_namecattype));
        $categories = json_decode(json_encode($result), true);
        $str = $this->ListAllCateByTypeId($_namecattype,0);     
        return $str;
    }
    public function ListAllCateByTypeId($_cattype='product', $_idcat=0) {
        $_cate_selected = array();
        $_cate_selected[0]['idcategory'] = 0;
        $result = DB::select('call ListAllCatByTypeProcedure(?)',array($_cattype));
        $categories = json_decode(json_encode($result), true);
        $str_ul="";$str_li="";
        if($_idcat > 0){
           $this->showCategories($categories, $_idcat,0,$_cate_selected);
           $s_catename = DB::select('call SelRowCategoryByIdProcedure(?)',array($_idcat));
           $r_catename = json_decode(json_encode($s_catename), true);
           foreach ($r_catename as $item) {
               //$selected = ($this->compare_in_list($_cate_selected,$item['idcategory']) >0) ? 'checked' : '';
               $str_li = '<li>'.$item['namecat'];
            }
       }else{
           $this->showCategories($categories, 0,0,$_cate_selected);
       }      
        $str_html = $str_li.$this->main_menu;
        return $str_html; 
    }
    public function showCategories($categories, $idparent = 0, $char = 0, $_cate_selected)
    {
        $cate_child = array();
        foreach ($categories as $key => $item){
            if ($item['idparent'] == $idparent)
            {
                $cate_child[] = $item;
                unset($categories[$key]);
            }
        }
        $list_cat="";       
        if ($cate_child){
            $char++;
            $this->main_menu .= '<div class="menu_section '.$char.'"><ul class="nav side-menu">';
            foreach ($cate_child as $key => $item){
                $this->main_menu .= '<li>'.$item['namecat'];
                $this->showCategories($categories, $item['idcategory'], $char, $_cate_selected);
                $this->main_menu .= '</li>';
            }
            $this->main_menu .= '</ul></div>';
        }
    }
}
