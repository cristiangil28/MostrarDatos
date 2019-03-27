<?php

require_once('../models/Conexion.php');
class ConexionModel{
    function __construct(){

    }
    //función que permite la conexión con el servidor
    function getConexion(){
        
        
        $conexion=$this->crearConexion();
        $con=new mysqli($conexion->getServidor(),$conexion->getUsuario(),$conexion->getPassword(),$conexion->getDb());
        
        return $con;
    }

    //se crear el objeto Conexion y se retorna
    function crearConexion(){
        include('../config/config.php');
        $conexion= new Conexion(user,password,servidor,db);
        return $conexion;
    }
}