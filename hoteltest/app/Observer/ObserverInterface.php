<?php
/**
 * @author Pang Jin Siang
 */
namespace App\Observer;

use App\Models\Review;

interface ObserverInterface
{
    public function created(Review $review);
}