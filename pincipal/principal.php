<?php include 'main/conecta.php';
session_start();
$usuario = $_SESSION['Usuario'];
if (!isset($usuario)) {
 header("location:session.php");
}
//cerrar la BD
$conecta->close();
?>
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
    <meta name="keywords" content="Sistema Online, Perfil de Usuario, Reportes de Asistencia, Recorrido Virtual, Juegos Interactivos, Guía de estudiantes, Conalep Naucalpan 1, Gestión de planteles, Carreras Técnicas">
   <!-- meta para el autor del sitio  -->
    <meta name="autor" content="Borderline">
    <!-- el de la marca --->
    <meta name="copyright" content="Borderline & Conactive">
    <meta name="robots" content="index/">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/main2.css">
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <script src="includes/push/push.min.js"></script>
    <script src="js/jquery-3.5.1.min.js"></script>
    <title>Sistema | Conactive</title>
    <!--Inicia notificaciones-->
    <?php
      $notification= '<script>
          Push.create("Hola, bienvenid@.", {
                body: "Conoce el futuro proyecto de la empresa BorderLine",
                icon: "img/logo.png",
                timeout: 6000,
                onClick: function() {
                  window.location="project.php";
                  this.close();
                }
          });
        </script>';
          echo $notification;
          ?>
        <!--Termina notificaciones-->
  </head>
  <body>
    <!--Inicia Navbar y sidebar-->
     <?php include 'main/sidebar.php' ?>
     <div id="page-content-wrapper">
      <?php include 'main/navbar.php' ?>
      <!--Inicia contenido-->
       <div class="container py-5">
         <h4 class="text-center">Módulos Interactivos</h4>
          <div class="container py-3">
            <div class="row" data-aos="fade-down">
          <!-- inicia nuestra tarjeta de sevicios -->
              <div class="col aling-middle">
                <div class="card shadow p-3 mb-5 bg-white rounded" style="width: 20rem;">
                    <div class="card-header text-center" style="background: #9999ff; color: #333;">
                      Recorrido Virtual
                    </div>
                    <a href="#"><img src="img/recVirtual.png" class="card-img-top servicios-img" alt="Modulo1"></a>
                    <div class="card-body">
                      <p class="card-text text-justify">Vive la experiencia como si estuvieras ahí.</p>
                   </div>
              </div>
            </div><!-- termina primera card-->
            <!-- inicia nuestra tarjeta de sevicios -->
              <div class="col aling-middle">
                <div class="card shadow p-3 mb-5 bg-white rounded" style="width: 20rem;">
                  <div class="card-header text-center" style="background: #9999ff; color: #333;">
                    Juegos Interactivos
                  </div>
                    <a href="#"><img src="img/juego.jpg" class="card-img-top servicios-img" alt="Modulo2"></a>
                  <div class="card-body">
                     <p class="card-text text-justify">Diviertete en los juegos que tenemos para ti.</p>
                 </div>
              </div>
            </div><!-- termina segunda card-->
        <!-- inicia nuestra tarjeta de sevicios -->
            <div class="col aling-middle">
              <div class="card shadow p-3 mb-5 bg-white rounded" style="width: 20rem;">
                <div class="card-header text-center" style="background: #9999ff; color: #333;">
                    Control de DIES
                </div>
                  <a href="#"><img src="img/controldies.jpg" class="card-img-top servicios-img" alt="Modulo3"></a>
                  <div class="card-body">
                    <p class="card-text text-justify">Mantén tu asistencia a las sesiones de manera segura.</p>
                  </div>
              </div>
            <!-- termina Tercera card-->
          </div>
        </div>
      </div>
  <!-- termina seccion modulos-->
       </div>
       <?php include 'main/contenido.php' ?>
       <!--Termina contenido-->
      </div>
    <!--Termina Navbar y sidebar-->

    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
