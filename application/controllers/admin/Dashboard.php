<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Admin_Controller {

    function __construct(){
        parent::__construct();
    }

    public function index(){
//        $this->load->view('admin/dashboard_view');
        $this->render('admin/dashboard_view');

        // use library
        // $this->load->library('str_slug');
        // echo $this->str_slug->str_slug('aasddsa aaa asdsadads.dox','-','image');
    }
}