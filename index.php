<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <title>Cargar datos</title>
 
</head>
<body>
<h1>Usuarios</h1>
<div id="resultado"></div>
<button onclick="Cargar('cargar');">Mostrar Datos</button>
<div id="total"></div>
<button onclick="total('total');">total</button>
</body>
<script>
function total(r){
  var xmlhttp = new XMLHttpRequest();
var url = "controllers/UsuarioController.php?id="+r;
xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("total").innerHTML = this.responseText;
    }
  };
xmlhttp.open("GET", url, true);
xmlhttp.send(); 
}

function Cargar(r) {
var xmlhttp = new XMLHttpRequest();
var url = "controllers/UsuarioController.php?id="+r;
xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("resultado").innerHTML = this.responseText;
    }
  };
xmlhttp.open("GET", url, true);
xmlhttp.send(); 
}
</script>
</html>