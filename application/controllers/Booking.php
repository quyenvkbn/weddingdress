<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Booking extends Public_Controller {


    public function index(){
        $this->render('booking_view');
    }
}
