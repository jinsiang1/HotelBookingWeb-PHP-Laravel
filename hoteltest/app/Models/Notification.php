<?php
/**
 * @author Pang Jin Siang
 */
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    use HasFactory;

    protected $primaryKey = 'notificationID';
    protected $fillable = ['type', 'message','reviewID'];
}
