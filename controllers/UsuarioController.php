<?php
require '../models/UsuarioModel.php';
$user= new UsuarioModel();
if($_GET['id']=='cargar'){
    $user->getAll();
}
if($_GET['id']=='total'){
    $user->getTotalStatus();
}

//

    
