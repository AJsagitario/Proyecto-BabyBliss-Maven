<%@ include file="header.jsp" %> 
<link href="../CSS/pagoTarjeta.css" rel="stylesheet" type="text/css"/>
<html>
    <body>
        <div class="cont">
            <form action="../ConfirmarPagoServlet" method="post"> <!-- Formulario que env�a los datos al servlet -->
                <div class="content">
                    <div class="col">
                        <h3 class="title">Datos Personales</h3>
                        <div class="input">
                            <span>Nombre completo</span>
                            <input type="text" name="nombreCompleto" required>
                        </div>
                        <div class="input">
                            <span>Correo</span>
                            <input type="email" name="correo" required>
                        </div>
                        <div class="input">
                            <span>Direcci�n</span>
                            <input type="text" name="direccion" required>
                        </div>
                        <div class="input">
                            <span>Pa�s</span>
                            <input type="text" name="pais" required>
                        </div>
                        <div class="flex">
                            <div class="input">
                                <span>Ciudad</span>
                                <input type="text" name="ciudad" required>
                            </div>
                            <div class="input">
                                <span>ZIP</span>
                                <input type="text" name="zip" required>
                            </div>
                        </div>
                    </div>           
                    <div class="col">
                        <h3 class="title">M�todo de pago</h3>
                        <div class="input">
                            <span>Tarjetas aceptadas</span>
                            <img src="../IMG/TARJETAS.png" alt=""/>
                        </div>
                        <div class="input">
                            <span>Nombre del titular</span>
                            <input type="text" name="nombreTitular" required>
                        </div>
                        <div class="input">
                            <span>N�mero de la tarjeta</span>
                            <input type="number" name="numeroTarjeta" required>
                        </div>
                        <div class="input">
                            <span>Mes</span>
                            <input type="text" name="mes" required>
                        </div>

                        <div class="flex">
                            <div class="input">
                                <span>A�o</span>
                                <input type="number" name="anio" required>
                            </div>
                            <div class="input">
                                <span>CVV</span>
                                <input type="text" name="cvv" required>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" value="Pagar" class="submit-btn">
            </form>
        </div>     
    </body>
</html>
<%@ include file="footer.jsp" %> <!-- Incorpora el c�digo del archivo footer -->