<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <!-- meta tipos de caracteres especiales en la web -->
    <meta charset="utf-8">
    <!-- optimizar el sitio para moviles -->
    <meta name="MobileOptimizer" content="width"/>
    <!-- optimizacion para cualquier dispositivo -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- descripción del sitio web -->
    <meta name="description" content="Sistema online para ayuda y guía de estudiantes y futuros estudiantes, gestión del plantel a través de módulos como son:
    registro de alumnos, reporte de alumnos, Recorrido Virtual de las áreas que conforman al plantel, Desarrollo de Juego Interactivos para el aprendizaje de las distintas carreras que ofrece la institución">
    <!-- palabras claves para el seo -->
    <meta name="keywords" content="Sistema Online, Inicio de sesión, Perfil de Usuario, Reportes de Asistencia, Recorrido Virtual, Juegos Interactivos, Guía de estudiantes, Conalep Naucalpan 1, Gestión de planteles, Carreras Técnicas">
   <!-- meta para el autor del sitio  -->
    <meta name="autor" content="Borderline">
    <!-- el de la marca --->
    <meta name="copyright" content="Borderline & Conactive">
    <meta name="robots" content="index/">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <title>Inicio de sesión</title>
  </head>
  <body>
    <!--Inicia contenido-->
    <div class="container" style="margin-top: 80px; background: #99ccff" >
    <div class="container">
      <h3 class="text-center py-2">Iniciar sesión</h3>
      <div class="card">
          <h4 class="text-center text-muted py-4">Bienvenido, por favor ingresa tu usuario y contraseña</h4>
        <!--Inicia formulario-->
          <div class="container">
              <form class="form-group" action="main/login.php" method="post">
                  <input type="text" class="form-control" name="usuario" placeholder="Usuario" required>
                  <br>
                  <input type="password" class="form-control" name="password" id="pass" placeholder="Password" required>
                  <br>
                  <div class="col">
                      <div class="custom-control custom-switch">
                          <input type="checkbox" class="custom-control-input" id="ver" onclick="verpass(this);">
                          <label class="custom-control-label" for="ver">Ver Password</label>
                      </div>
                  </div>
                  <input type="submit" name="inicio" value="Iniciar sesión" class="btn btn-sm btn-block" style="background:#9999ff; margin-top: 25px; width: 50%; margin-left: auto; margin-right: auto;"> <br>
                  <div class="boton">
                <h5 align="center">
                ¿Aún no te registras?
                </h5>
                </div>
                <div class="contenedor">
            <a href="../registro/registro.php"><button style="background:#9999ff; margin-top: 25px; width: 50%; margin-left: auto; margin-right: auto;" type="button" class="btn btn-sm btn-block">¡Regístrate!</button></a>
                  </div>
              </form>
          </div>
        <!--Termina formulario-->
      </div>
    </div>
    <!--Termina contenido-->
        <div class="container">
            <p class="text-center py-2">
              <span class="icon-copyright"></span><img src="img/logo.png" alt="Logotipo Borderline" class="logo" style="width: 105px;
              height: 40px">
            </p>
    </div>
  </div>
    <script type="text/javascript">
      function verpass(cb) {
        if (cb.checked)
          $('#pass').attr("type","text");
          else {
          $('#pass').attr("type","password");
          }
      }
    </script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
