<?php
/**
 * @author Tan Xuan Ying
 */
namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthenticationController extends Controller
{
    /**
     * Authenticate a user.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function authenticate(Request $request)
    {
        $email = $request->input('email');
        $password = $request->input('password');

        // Retrieve the user based on the provided email
        $user = User::where('email', $email)->first();

        // Check if the user exists and if the provided password matches
        if ($user && Hash::check($password, $user->password)) {
            // Authentication successful, return the user data
            return response()->json([
                'id' => $user->id,
                'name' => $user->name,
                'gender'=>$user->gender,
                'phone'=>$user->phone,
                'email' => $user->email,
                'password' => $user->password,
                // Add any additional user data you need here
            ]);
        }

        // Authentication failed, return an error response
        return response()->json(['error' => 'Invalid credentials'], 401);
    }
}