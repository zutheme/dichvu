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

class HomeController extends Controller
{
    public function Home()
    {
    	try {
            $_idcategory = 6;
            $_limit = 4;
            $_idstore = 31;
            //$qr_LstProCombo = DB::select('call ListProductComboProcedure(?)',array($_limit));
            //$rs_LstProCombo = json_decode(json_encode($qr_LstProCombo), true);
            //teamilk
            //$qr_promotion = DB::select('call LatestPromotionProcedure(?,?)',array($_idstore,$_limit));
            //$rs_promotion = json_decode(json_encode($qr_promotion), true);
            $_limit1 = 4;
            ///$qr_teamilk1 = DB::select('call LatestProductByIdcateProcedure(?,?,?)',array($_idcategory, $_idstore, $_limit1));
            //$teamilks1 = json_decode(json_encode($qr_teamilk1), true);

            $_limit2 = 8;
            $qr_teamilk2 = DB::select('call LatestProductByIdcateProcedure(?,?,?)',array($_idcategory, $_idstore, $_limit2));
            $teamilks2 = json_decode(json_encode($qr_teamilk2), true);

            $qr_popular = DB::select('call RelateProductProcedure');
            $popular = json_decode(json_encode($qr_popular), true);
            return view('teamilk.home',compact('teamilks2'));
            //return view('teamilk.home',compact('popular','rs_LstProCombo','rs_promotion','teamilks1','teamilks2'));
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['error' => $ex->getMessage()]);
            //return redirect()->route('teamilk.home')->with('error',$errors);
             return view('teamilk.home')->with('error',$errors);
        }
    }
}
