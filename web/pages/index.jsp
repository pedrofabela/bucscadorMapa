<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>






<script type="text/javascript">

    function guarda(accion) {

        document.forma.action = accion;
        document.forma.submit();
    }
    //PARA REGRESAR EN DONDE SE QUEDO...........
    window.onload = function () {
        var pos = window.name || 0;
        window.scrollTo(0, pos);
    }
    window.onunload = function () {
        window.name = self.pageYOffset
                || (document.documentElement.scrollTop + document.body.scrollTop);
    }
    
    function popup(accion, folio, nomesc) {
       
      location.href ="#popup";
      
      var nombreesc=nomesc;
      
     
      
      
     
        document.getElementById('FOLIO2').value = folio;
         document.getElementById('escuela').value = nombreesc;
        
        document.forma.action = accion;
      document.forma.submit();
         
         
        
         
         
         
    }
    
    
    
    
    
</script> 
    
    








<style>
                /* Always set the map height explicitly to define the size of the div
                 * element that contains the map. */
                #map {
                    height: 70%;
                }
                /* Optional: Makes the sample page fill the window. */
                html, body{
                    height: 90%;
                    margin: 0;
                    padding: 0;
                }
</style>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Buscador</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/freelancer.min.css" rel="stylesheet">
        
    <script src="vendor/jquery/jquery.min.js"></script>
    
       <link rel="stylesheet" href="css/style.css"/>

  </head>

    <body id="page-top" style="background: url('img/fond.png'); z-index: 1;">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav" style="background: white;  box-shadow: 3px 3px 10   px #666;">
      
      <div class="container">
        
        
                                        <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                                            <img src="img/logos.png" style="min-width: 20%; max-width: 250px;"></img>
                                        </button>
          
          
          <button class="navbar-toggler navbar-toggler-right text-uppercase  text-white rounded " style="background: purple;" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                                                                    Menu
                                                                    <i class="fas fa-bars"></i>
                    </button>
          
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="http://expoorientavirtual.edugem.gob.mx/index.html" style="text-transform: none;">Inicio</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="http://expoorientavirtual.edugem.gob.mx/acerca.html" style="text-transform: none;">¿Qu&eacute; es?</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#" style="text-transform: none;">Localiza tu escuela</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead bg-primary text-white text-center" style="min-height: 800px; margin-top: -70px;" >
        
            <s:form name="forma">
          <div class="row" style="border-collapse: collapse; width: 100%;  min-height: 700px;">

              <div class="form-group col-lg-5" style="background: #dcdcdc; border-radius: 20px; box-shadow: 3px 3px 8px #666;">
                                                                
                                                                <img src="img/titulo.png"   class="img_titulo" style="margin-bottom: 30px; width: 60%; margin-top: 30px; "/>
                                                               
                                                                    <s:select cssClass="select1" name="objbus.MUNICIPIO" list="ListaMunicipio" listKey="CVEMUNICIPIO" listValue="DESCRIPCION" headerKey="" headerValue="MUNICIPIO" cssStyle="display: block; width: 70%; margin-top: 10px; margin-left: 1%; margin:auto; margin-top: 10px; height: 40px; border-radius: 10px; text-align:center;"/>
                                                                    <s:iterator value="ListaMunicipio" id="ListaMunicipio" status="stat" >
                                                                        <s:hidden  name = "ListaMunicipio[%{#stat.index}].CVEMUNICIPIO"  id="CVEMUNICIPIO"></s:hidden>                                    
                                                                        <s:hidden  name = "ListaMunicipio[%{#stat.index}].DESCRIPCION"  id="DESCRIPCION"></s:hidden> 
                                                                    </s:iterator> 
                                                                    <s:fielderror fieldName="ErrorMunicipio" cssClass="error1" cssStyle="color: #333;" /> 

                                                                    <s:select list="ListaCatalogo"  listKey="ID_CATALOGO" listValue="VALOR" cssClass="select2" name="objbus.SUBSISTEMA"  headerKey="" headerValue="SUBSISTEMA" cssStyle="display: block; width: 70%;  margin-left: 1%; margin:auto; margin-top: 10px; height: 40px; border-radius: 10px; text-align:center;" /> 
                                                                   
                                                                    <s:iterator value="ListaCatalogo" id="ListaCatalogo" status="stat">
                                                                        <s:hidden  name = "ListaCatalogo[%{#stat.index}].ID_CATALOGO" id="ID_CATALOGO"></s:hidden>
                                                                        <s:hidden  name = "ListaCatalogo[%{#stat.index}].VALOR" id="VALOR"></s:hidden>

                                                                    </s:iterator>
                                                                    
                                                                    <s:fielderror fieldName="ErrorSubsistema" cssClass="error2" cssStyle="color: #333;" />

                                                                    <a href="Javascript:guarda('ConsultaInformacion')">
                                                                        <img src="img/b33.png"   alt="" class="buscar" style="margin-top: 10px;  margin-bottom: 20px;  "/> 
                                                                    </a>
                                                                   
                                                                      <div class="table table-hover" style="margin-top: 0px; font-size: 10px; width: 95%; color:#333; margin-top: 10px; border: 1px #333;" >
                                                                          <div id="div1" style="max-height: 350px; overflow-y: scroll; margin-left: 2%;">
                                                                            <table  width="100%"  >
                                                                                <thead style="background: #f48656; color: white; text-align: center;">
                                                                                    <tr>
                                                                                        <td align="center">NOMBRE DE LA ESCUELA</td>
                                                                                        <td align="center">DIRECCIÓN</td>
                                                                                        <td align="center">TIPO DE BACHILLERATO</td>                                                           
                                                                                        

                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>	
                                                                                    
                                                                                    <s:if test="ListaDatos.size()>0">
                                                                                    <s:iterator value="ListaDatos" id="ListaDatos" status="stat">
                                                                                        <tr >
                                                                                            <td align="center" style="text-decoration: none; color:white;"> <a href="Javascript:popup('consultaCarreras','<s:property value="FOLIO" />','<s:property value="NOMESC"/>')" style="text-decoration: none; color: #333;" ><s:property value="NOMESC"/></a></td>
                                                                                            <td align="center"><s:property value="DIRESC"/></td>
                                                                                            <td align="center"><s:property value="TIPOBACHILLER"/></td>
                                                                                        </tr> 
                                                                                    </s:iterator>
                                                                                    </s:if>
                                                                                    
                                                                                    <s:else>
                                                                                        <tr>
                                                                                            <td align="center" colspan="3" style="font-size: 13px; color: red;">¡No hay información relacionada a tu busqueda!</td>
                                                                                        </tr>
                                                                                    </s:else>
                                                                                    
                                                                                     <s:iterator value="ListaDatos" id="ListaDatos" status="stat">
                                                                            <s:hidden  name = "ListaDatos[%{#stat.index}].FOLIO" id="FOLIO"></s:hidden>
                                                                              <s:hidden  name = "ListaDatos[%{#stat.index}].NOMESC" id="NOMESC"></s:hidden>
                                                                               <s:hidden  name = "ListaDatos[%{#stat.index}].DIRESC" id="DIRESC"></s:hidden>
                                                                              <s:hidden  name = "ListaDatos[%{#stat.index}].TIPOBACHILLER" id="TIPOBACHILLER"></s:hidden>
                                                                          <s:hidden  name = "ListaDatos[%{#stat.index}].LONGITUD" id="LONGITUD"></s:hidden>
                                                                          <s:hidden  name = "ListaDatos[%{#stat.index}].LATITUD" id="LATITUD"></s:hidden>
                                                                        </s:iterator>
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                </tbody>   
                                                                            </table> 
                                                                        </div>
                                                                    </div>    


                                                              
                                                            </div>
                                                            <div class="form-group col-lg-7">
                                                               

                                                                  
                                                                  
                                                                <img src="img/mapa.png" style="width:100%"</img>
                                                                
                                                                
                                                               <!--   <div id="map" style="border-radius: 20px; box-shadow: 3px 6px 8px #A6A6A6; margin-bottom: 60px; margin-top: 0px; height: 100%; min-height: 500px; width: 95%; margin: auto;"></div> -->
                                                           
       
                                                             </div>
          
          
          
           
          
          
      </div>
                                                                    
                                                                    
                                <div class="modal-wrapper" id="popup">
                                                    <div class="popup-contenedor">
                                                        
                                                       
                                                        <h2  style="font-size: 16px;" >Oferta educativa de la Institución </h2>
                                                        
                                                        <div><s:textfield name="objbus.AUXNOM" id='escuela' style='width: 80%; text-align:center; ' readonly="true"></s:textfield></div>
                                                        
                                                       
                                                        <div style="min-height:350px; max-height: 400px; overflow-y: scroll;" >
                                                        
                                                            <s:if test="ListaCarreras.size()>0">
                                                           
                                                            <table style="width: 80%; margin: auto; margin-top: 25px;">

                                                                 
                                                                        
                                                                <tr style="background: #f48656; height: 35px; color: white; ">
                                                                            <td>Clave de Cerrera</td>
                                                                             <td>Nombre de la Carrera</td>
                                                                        </tr>
                                                                        
                                                                        

                                                                        <s:iterator value="ListaCarreras" id="ListaCarreras" status="stat">
                                                                            <tr style="border: 1px solid  #666; height: 30px; color: #666;">
                                                                                <td style="width: 30%;"><s:property value="NUEVOID"/></td>
                                                                                <td style="width: 70%;"><s:property value="NOMBRE_CARRERA"/></td>
                                                                              
                                                                            </tr>
                                                                        </s:iterator>
                                                                        
                                                                        
                                                                          <s:iterator value="ListaCarreras" id="ListaCarreras" status="stat">
                                                                            
                                                                              <s:hidden  name ="ListaCarreras[%{#stat.index}].NUEVOID" id="NUEVOID"></s:hidden>
                                                                               <s:hidden  name ="ListaCarreras[%{#stat.index}].NOMBRE_CARRERA" id="NOMBRE_CARRERA"></s:hidden>
                                                                              
                                                                          
                                                                        </s:iterator>

                                                                   
                                                                </table>
                                                                </s:if>
                                                        <s:else >
                                                            <div style=" width: 100%; color:red; text-align: center; margin-top: 20px;"> ¡No hay Información para mostrar!</div>
                                                        </s:else>
                                                            
                                                        <a class="popup-cerrar" href="#">X</a>
                                                    </div>
                                                        
                                                       
                                                        
                                                       
                                                        
                                                </div>                                              
                                                                    
                                </div>                         
                                                                    
                                                                    <s:textfield name="objbus.FOLIO2" id="FOLIO2" style='visibility:hidden'></s:textfield>                            
                                                                    
                                                                                                   
                                                                    
            
            </s:form>
        
                                               
    </header>

   

    <!-- Footer -->
    <footer class="footer text-center" style="background: #2c3e50;">
      <div class="container">
        <div class="row">
          <div class="col-md-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">¿Tienes alguna pregunta?</h4>
            <p class="lead mb-0">Centro de Atención Telefónica (CATGEM)
                <br><i class="fa fa-phone" style=" font-size: 20px;"></i></p>
          </div>
          <div class="col-md-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Redes Sociales</h4>
            <ul class="list-inline mb-0">
              <li class="list-inline-item">
                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="https://www.facebook.com/educacionEdomex/">
                  <i class="fab fa-fw fa-facebook-f"></i>
                </a>
              </li>
             
             
            </ul>
          </div>
          <div class="col-md-4">
            <h4 class="text-uppercase mb-4">Contacto</h4>
            <p class="lead mb-0" style="font-size: 12px;">Disponible las 24 horas, los 365 días del año

LADA SIN COSTO: 01 800 696 96 96

VALLE DE TOLUCA: 070

Línea sin costo internacional

1877 399 50 05,

para Estados Unidos y Canadá</p>
          </div>
        </div>
      </div>
    </footer>

    <div class="copyright py-4 text-center text-white" style="background: #f48656;">
      <div class="container">
          <small  >Unidad de Desarrollo Administrativo e Informática</small>
      </div>
    </div>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-to-top d-lg-none position-fixed ">
      <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
        <i class="fa fa-chevron-up"></i>
      </a>
    </div>

    <!-- Portfolio Modals -->  

    <!-- Bootstrap core JavaScript -->
    
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.min.js"></script>
    
    
    
     <script>
                function initMap() {
                    var map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 10,
                        center: {lat: 19.363882, lng: -99.044922}
                    });
                    var ctaLayer = new google.maps.KmlLayer({
                        url: 'http://reubicacionescuela.edugem.gob.mx/cta.kmz',
                        map: map
                    });

                    var bounds = {
                        north: 19.363882,
                        south: 20.203405,
                        east: -99.044922,
                        west: -100.244141
                    };

                    // Display the area between the location southWest and northEast.
                    map.fitBounds(bounds);

                    // Add 5 markers to map at random locations.
                    // For each of these markers, give them a title with their index, and when
                    // they are clicked they should open an infowindow with text from a secret
                    // message.
                    var lngSpan = bounds.east - bounds.west;
                    var latSpan = bounds.north - bounds.south;
                    var secretMessages = [<s:iterator value="ListaDatos" status="rowstatus" >
                    '<s:property value="LONGITUD"/>',
                </s:iterator>
                    ];

                    // var u=0;

                    // u=u+0.02;
                    var i = 0;
                <s:iterator value="ListaDatos" status="rowstatus" >
                    var marker = new google.maps.Marker({
                        position: {

                            lat: <s:property value="LATITUD"/>,
                            lng: <s:property value="LONGITUD"/>
                        },
                        map: map, title: '<s:property value="NOMESC"/>'


                    });
                    i++;
                </s:iterator>
                    attachSecretMessage(marker, secretMessages[i]);

                }

                // Attaches an info window to a marker with the provided message. When the
                // marker is clicked, the info window will open with the secret message.
                function attachSecretMessage(marker, secretMessage) {
                    var infowindow = new google.maps.InfoWindow({
                        content: secretMessage
                    });

                    marker.addListener('click', function () {
                        infowindow.open(marker.get('map'), marker);
                    });
                }
            </script>
    
    
    
    
    <!--
            <script async defer
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOSszLbpB0zoqtz5WFasAdS5m_t2HIonA&callback=initMap">
            </script>    -->
    
    
    
    
    
    
    
    
    

<script type="text/javascript">

  var folio=document.getElementById("FOLIO2").value;
folio=parseInt(folio);
if(folio>0){
    
   location.href ="#popup";
}
   
</script>

    
    
    
    

  </body>

</html>
