<?php
/**
 * @author Pang Jin Siang
 */
namespace App\Http\Controllers;

use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ReviewController extends Controller
{
    public function index(){
        try{
            $reviews = Review::all();
            if($reviews->isEmpty()){
                return response()->json(['error'=>'No Review record'],404);
            }

            $reviewData = $reviews->map(function($review){
                return[
                    'rate'=>$review->rate,
                    'comment'=>$review->comment
                ];
            });

            return response()->json($reviewData);
        }catch(\Exception $e){
            Log::error('Fail to fetch review:'. $e->getMessage());
            return response()->json(['error'=>'Failed to fetch review'],500);
        }
    }
}
