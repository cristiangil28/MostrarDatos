<?php
class Usuario{
    private $id;
    private $user_name;
    private $first_name;
    private $last_name;

    function __construct($id,$user_name,$first_name,$last_name){
        $this->id=$id;
        $this->user_name=$user_name;
        $this->first_name=$first_name;
        $this->last_name=$last_name;
    }

    public function getId(){
        return $this->id;
    }
    public function getUserName(){
        return $this->user_name;
    }
    public function getFirstName(){
        return $this->first_name;
    }
    public function getLastname(){
        return $this->last_name;
    }
}

?>