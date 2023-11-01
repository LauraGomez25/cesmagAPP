<?php
include 'index.php';
include 'conexion.php';
?>
<div class="container">
<h1>Tabla Facultades</h1>
<div aling="right">
  <a class="btn btn-primary">Adicionar</a>
</div>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Codigo</th>
      <th scope="col">Nombre</th>
      <th scope="col">Opciones</th>
    </tr>
  </thead>
  <tbody>

  <?php
            $sql = "SELECT * FROM facultades";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>".$row["codigo_fac"]."</td>";
                    echo "<td>".$row["nombre_fac"]."</td>";

                    echo "<td>
                            <a class='btn btn-success'>EDITAR</a>
                            <a class='btn btn-danger'>ELIMINAR</a>
                         </td>";

                    
                }
            } else {
                echo "0 resultados";
            }
            $conn->close();
        ?>

  </tbody>
</table>
          </div>