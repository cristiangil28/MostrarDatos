<?php
    class Conexion{

        private $user;
        private $password;
        private $server;
        private $basededatos;

         function __construct($user,$password,$server,$basededatos){
            $this->user=$user;
            $this->password=$password;
            $this->server=$server;
            $this->basededatos=$basededatos;
         }

         public function getUsuario(){
             return $this->user;
         }

         public function getServidor(){
             return $this->server;
         }
         public function getPassword(){
            return $this->password;
         }
         public function getDb(){
             return $this->basededatos;
         }
    }
?>