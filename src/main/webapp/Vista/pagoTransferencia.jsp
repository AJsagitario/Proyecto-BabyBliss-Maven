<%@ include file="header.jsp" %> 
<link href="../CSS/pagoTransferencia.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* Estilos generales */
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f0f0f0; /* Color de fondo general */
            }

            .content {
                width: 80%;
                max-width: 1200px;
                margin: 20px auto; /* Centra el contenido */
                padding: 20px; /* Espaciado interno */
                background-color: #fff; /* Color de fondo para el contenido */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Sombra */
                text-align: center; /* Centra el contenido */
            }

            h1 {
                font-size: 3rem; /* Tama�o de fuente grande */
                color: #333; /* Color de texto */
            }

            p {
                font-size: 1.5rem; /* Tama�o de fuente mediano */
                color: #666; /* Color de texto gris */
            }
        </style>
    </head>
    <body>
        <div class="content">
            <h1>Pago por Transferencia Bancaria</h1>
            <p>Por favor, realiza la transferencia a la siguiente cuenta bancaria:</p>
            <p><strong>Banco:</strong> Banco De Cr�dito del Per�</p>
            <p><strong>N�mero de cuenta:</strong> 123456789012345</p>
            <p><strong>Titular:</strong> Fabian Vargas Ordinola</p>
            <p><strong>Concepto:</strong> Adquicision de membresia BabyBliss</p>
        </div>

        <div class="cont">
            <h1>Transferencia Bancaria</h1>
            <img src="../IMG/BBVA.png" alt="Banco BBVA" class="logo-banco">
            <p>CCI: 121-456478424561101</p>
            <p>CC: 456478424561101</p>
            <p>Nombre: Fabian Ordinola</p>
            <form id="formulario" action="" method="post" enctype="multipart/form-data">
                <label for="evidencia">Insertar evidencia</label>
                <input type="file" id="evidencia" name="evidencia" accept="image/*" >
                <br><br>
                <div class="buttom">
                    <input type="submit" onclick="adquirirMembresia()" value="Enviar" style="margin-bottom: 10px;"> 
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
            document.getElementById('formulario').addEventListener('submit', function (event) {
                event.preventDefault(); // Evitar que el formulario se env�e autom�ticamente

                // Simulando el env�o del formulario y mostrando el mensaje
                document.getElementById('formulario').style.display = 'none';
                document.getElementById('mensaje').style.display = 'block';


            });

            function adquirirMembresia() {
                var id = $('#idUsuario').val();
                $.ajax({
                    type: "POST",
                    url: "../srvPagarMembresia?id=" + id,
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
                        swal.fire({
                            title: '�Felicidades!',
                            text: 'Tu pago ha sido completado, disfruta tu membresia adquiridad',
                            icon: 'success',
                            confirmButtonText: 'Aceptar'
                        }).then((result) => {
                            if (result.value) {
                                window.location.href = "index.jsp";
                            }
                        });
                    }
                });
            }
        </script>
    </body>
</html>
<%@ include file="footer.jsp" %> <!-- Incorpora el c�digo del archivo footer -->