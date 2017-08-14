<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ApiModel extends CI_Model {

    public function selectTerjemahan(){
        $this->db->select('*');
        $query = $this->db->get('terjemahan');
        return $query;
    }

    public function getTerjemahanIndo($text){
    	$this->db->select('id, indo, jawa as terjemah, dibuat, diupdate');
	$this->db->where("indo='$text'");
        $query = $this->db->get('terjemahan');
        return $query;
    }
    
    public function getTerjemahanJawa($text){
    	$this->db->select('id, indo as terjemah, jawa, dibuat, diupdate');
	$this->db->where("jawa='$text'");
        $query = $this->db->get('terjemahan');
        return $query;    
    }

    
}

?>