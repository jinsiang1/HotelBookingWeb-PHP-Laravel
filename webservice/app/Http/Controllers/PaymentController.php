<?php
/**
 * @author Whelan Yap Boon Hong
 */
namespace App\Http\Controllers;

use App\Models\Payment;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    public function validateCard(Request $request){
        $cardNumber = $request->input('cardNumber');
        
        $exists = Payment::where('cardNumber', $cardNumber)->exists();

        if($exists){
            return response()->json(['exists' => true]);
        } else {
            return response()->json(['exists' => false]);
        }
    }
}
