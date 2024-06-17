<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<body>
<link href="../CSS/pagoYAPE.css" rel="stylesheet" type="text/css"/>
    <div class="cont">
        <img src="../IMG/QR_YAPE.png" alt="">
        <br><br>
        <div class="buttom">
            <form id="formulario" action="" method="post" enctype="multipart/form-data">
                <input type="file" id="evidencia" name="evidencia" accept="image/*" required>
 
                <br><br>
                <input type="submit" onclick="adquirirMembresia()" value="Enviar" id="enviarBtn">
            </form>
        </div>
    </div>

<script>
    document.getElementById('formulario').addEventListener('submit', function(event) {
        event.preventDefault(); // Evitar que el formulario se env�e autom�ticamente

        // Mostrar mensaje en ventana emergente
        alert('�Gracias por comprar la membres�a BabyGold! Ser� redirigido al inicio.');
        window.location.href = "index.jsp";
    });
    
    function adquirirMembresia() {
        var id = $('#idUsuario').val();
        $.ajax({
            type: "POST",
            url: "../srvPagarMembresia?id="+id,
            beforeSend: function () {
                swal.fire({
                    title: 'ESPERA',
                    html: 'Procesando...',
                    didOpen: () => {
                        swal.showLoading()
                    }
                })
            },
            success: function (data, textStatus, jqXHR) {
                
            }
        });
    }
</script>

<%@ include file="footer.jsp" %>
</body>
</html>