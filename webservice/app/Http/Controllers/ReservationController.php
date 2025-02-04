<?php
/**
 * @author Lee Kong Hang
 */
namespace App\Http\Controllers;

use App\Models\Reservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ReservationController extends Controller
{
    public function index(){
        try{
            $reserveServices = Reservation::all();
            if($reserveServices->isEmpty()){
                return response()->json(['error'=>'No Service record'],404);
            }

            $serviceData = $reserveServices->map(function($reserveService){
                return[
                    'roomService'=>$reserveService->roomService
                ];
            });

            return response()->json($serviceData);
        }catch(\Exception $e){
            Log::error('Fail to fetch service:'. $e->getMessage());
            return response()->json(['error'=>'Failed to fetch service'],500);
        }
    }
}
