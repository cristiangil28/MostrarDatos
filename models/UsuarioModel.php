<?php
require_once('../models/ConexionModel.php');
require_once('../models/Usuario.php');
class UsuarioModel{
    var $conexionM;
    function __construct(){
         $this->conexionM= new ConexionModel();
     }
     
     public function getUsers(){
         $listausuarios=[];
         $conexion=$this->conexionM->getConexion();
         $sql='select * from vtiger_users';
         $row=$conexion->query($sql);
         while ($lineas=$row->fetch_Array()) {
             $listaUsuarios[]= new Usuario($lineas['id'],$lineas['user_name'], $lineas['first_name'],$lineas['last_name']);
         }
                 
          
         return $listaUsuarios;
     }
     
     function getAll(){
         echo '<div>';
         echo "<table border = '1'> \n"; 
     echo " <tr> <th>Id</th> <th>User Name</th> <th>First name</th> <th>Last name</th> </tr>";
         foreach ($this->getUsers() as $user){
             echo "<tr>";
             echo "<td>".$user->getId()."</td>"; echo "<td>".$user->getUserName()."</td>";
             echo "<td>".$user->getFirstName()."</td>"; echo "<td>".$user->getLastname()."</td>"; 
         echo "</tr>"; 
         }
         echo "</table>"; 
         echo '</div>';
         /* $total=$this->getTotalStatus();

         echo '<div>';
         echo '<label>total de usaurios</label>';
         foreach ($total as $t){
             echo $t;
         }
         echo '</div>'; */
     }
     public function getTotalStatus(){
        $listausuarios=[];
        $conexion=$this->conexionM->getConexion();
        $sql='select count(status) as total from vtiger_users where status="ACTIVE"';
        $row=$conexion->query($sql);
        while ($lineas=$row->fetch_Array(MYSQLI_ASSOC)) {
			$listaUsuarios[]= $lineas['total'];
        }
        //print_r($listaUsuarios);
        //return $listaUsuarios;
        $total=$listaUsuarios;

         echo '<div>';
         echo '<label>total de usaurios activos: </label>';
         foreach ($total as $t){
             echo $t;
         }
         echo '</div>';
    }
}