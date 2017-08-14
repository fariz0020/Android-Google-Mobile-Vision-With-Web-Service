<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;

/**
 * This is an example of a few basic user interaction methods you could use
 * all done with a hardcoded array
 *
 * @package         CodeIgniter
 * @subpackage      Rest Server
 * @category        Controller
 * @author          Phil Sturgeon, Chris Kacerguis
 * @license         MIT
 * @link            https://github.com/chriskacerguis/codeigniter-restserver
 */
class Translate extends REST_Controller {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('ApiModel');

        // Configure limits on our controller methods
        // Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
        $this->methods['users_get']['limit'] = 500; // 500 requests per hour per user/key
        $this->methods['users_post']['limit'] = 100; // 100 requests per hour per user/key
        $this->methods['users_delete']['limit'] = 50; // 50 requests per hour per user/key
    }

    public function selectterjemah_get(){
        $result = $this->ApiModel->selectterjemahan()->result_array();

        $this->response($result, 202);
    }

    public function terjemah_get(){
        $text= $this->GET('text');

        $result = $this->ApiModel->getTerjemahanIndo($text)->result_array();

        $row=$this->ApiModel->getTerjemahanIndo($text)->num_rows();

        if($row>0){
            $this->response($result, REST_Controller::HTTP_OK);
        }else {
        	$this->terjemah_jawa($text);
        	
        }
    }
    
    public function terjemah_jawa($text) {
        $result2 = $this->ApiModel->getTerjemahanJawa($text)->result_array();
        $row2 = $this->ApiModel->getTerjemahanJawa($text)->num_rows();
        	
        if($row2>0){
        	$this->response($result2, REST_Controller::HTTP_OK);
        }else{
            	$this->response(FALSE, REST_Controller::HTTP_NOT_FOUND);
        }
    }

}
