<?php
include 'index.php';
include 'conexion.php';
?>

<div class="container">
<!-- Default form contact -->
<form class="text-center border border-light p-5" action="registroFac.php" method="POST">

    <p class="h4 mb-4">Registro Facultades</p>

    <!-- Name -->
    <input type="text" id="codigoFac" name="codigoFac" class="form-control mb-4" placeholder="Codigo">

    <!-- Email -->
    <input type="text" id="nombreFac" name="nombreFac" class="form-control mb-4" placeholder="Facultad">


    <!-- Send button -->
    <button class="btn btn-info btn-block" type="submit">Enviar</button>

</form>
<!-- Default form contact -->


</div>