<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Collections extends Public_Controller {


    public function index(){
        $this->render('list_collections_view');
    }

    public function detail(){
        $this->render('detail_collection_view');
    }
}
