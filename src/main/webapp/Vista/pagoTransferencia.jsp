<%@ include file="header.jsp" %> 
<link href="../CSS/pagoTransferencia.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
<body>
<div class="cont">
    <h1>Transferencia Bancaria</h1>
    <img src="../IMG/BBVA.png" alt="Banco BBVA" class="logo-banco">
    <p>CCI: 121-456478424561101</p>
    <p>CC: 456478424561101</p>
    <p>Nombre: Fabian Ordinola</p>
    <form id="formulario" action="" method="post" enctype="multipart/form-data">
        <label for="evidencia">Insertar evidencia</label>
        <input type="file" id="evidencia" name="evidencia" accept="image/*" required>
        <br><br>
        <div class="buttom">
            <input type="submit" value="Enviar" style="margin-bottom: 10px;"> 
            <p class="mensaje-espera">El tiempo de espera para la validaci�n de su compra depender� de su entidad financiera</p>
        </div>
    </form>
    <div class="msj">
        <div id="mensaje" style="display: none;">
            <p>�Gracias por comprar la membres�a BabyGold!</p>
            <p>Ser� redirigido al inicio.</p>
        </div>
    </div>
</div>

<script>
    document.getElementById('formulario').addEventListener('submit', function(event) {
        event.preventDefault(); // Evitar que el formulario se env�e autom�ticamente

        // Simulando el env�o del formulario y mostrando el mensaje
        document.getElementById('formulario').style.display = 'none';
        document.getElementById('mensaje').style.display = 'block';

        setTimeout(function() {
            window.location.href = "index.jsp";
        }, 8000); // Redireccionar al index despu�s de 8 segundos
    });
</script>

</body>
</html>
<%@ include file="footer.jsp" %> <!-- Incorpora el c�digo del archivo footer -->
