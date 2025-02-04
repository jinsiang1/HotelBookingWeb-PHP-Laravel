<?php
/**
 * @author Pang Jin Siang
 */
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;

    protected $primaryKey = 'reviewID';
    protected $fillable = ['reviewID', 'rate', 'comment'];

}
