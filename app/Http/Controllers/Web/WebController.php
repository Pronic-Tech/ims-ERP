<?php
/*
 * Mr. Umesh Kumar Yadav
 * Business With Technology Pvt. Ltd.
 * Rajbiraj-7 (Province 2, Saptari), Nepal
 * +977-9868156047
 * freelancerumeshnepal@gmail.com
 * https://codecanyon.net/item/unlimited-edu-firm-school-college-information-management-system/21850988
 */
namespace App\Http\Controllers\Web;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class WebController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    /*check internet connection*/
    public function checkConnection()
    {
        $connected = @fsockopen("www.google.com", 80); //website, port  (try 80 or 443)
        if ($connected){
            return true;
        }
        return false;
    }
}
