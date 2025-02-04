<?php
/**
 * @author Lee Kong Hang
 */
namespace App\Factory;

interface ReservationFactoryInterface {
    public function createReservation($reservationData,$customerID);
}