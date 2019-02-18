<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>

<!doctype html>

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
</script> 

<style>
                /* Always set the map height explicitly to define the size of the div
                 * element that contains the map. */
                #map {
                    height: 70%;
                }
                /* Optional: Makes the sample page fill the window. */
                html, body{
                    height: 80%;
                    margin: 0;
                    padding: 0;
                }
</style>

<html>
    <head>
        <meta charset="utf-8">
            <title>Buscador</title>
           

            <link href="<s:url value="/css/style.css"/>" media="all" rel="stylesheet" type="text/css"/> 
           
    </head>

    <body>
        <s:form name="forma">

            <%--<img src="img/marcador.png"   class="img_marcador"/>--%>
            <img src="img/titulo.png"   class="img_titulo"/>
            <h1 class="h1_inicio">  <a href="http://expoorientavirtual.edugem.gob.mx/index.html" style="text-decoration:none; color:#484848;">Inicio</a>  </h1>
            <h1 class="h1_que"> <a href="http://expoorientavirtual.edugem.gob.mx/acerca.html" style="text-decoration:none; color:#484848;"> ¿Qu&eacute; es?</a></h1>
            <h1 class="h1_busca"><a href="#" style="text-decoration:none; color:#484848;"> Localiza tu escuela</a></h1>
            <img src="img/banner.png" width="100%" height="152" alt=""  class="img_banner" />


            <img src="img/u161-4.png" width="676" height="42" alt="" class="img_titulo2" />
            <br>
                <img src="img/b1.png"   alt="" class="boton1"/>
                <img src="img/b2.png"   alt="" class="boton2"/> 


                <a href="Javascript:guarda('ConsultaInformacion')">
                    <img src="img/b33.png"   alt="" class="buscar"/> 
                </a>

                <s:select cssClass="select1" name="objbus.MUNICIPIO" list="ListaMunicipio" listKey="CVEMUNICIPIO" listValue="DESCRIPCION"
                          headerKey="" headerValue="--SELECCIONE--"/>
                <s:iterator value="ListaMunicipio" id="ListaMunicipio" status="stat" >
                    <s:hidden  name = "ListaMunicipio[%{#stat.index}].CVEMUNICIPIO"  id="CVEMUNICIPIO"></s:hidden>                                    
                    <s:hidden  name = "ListaMunicipio[%{#stat.index}].DESCRIPCION"  id="DESCRIPCION"></s:hidden> 
                </s:iterator> 
                <s:fielderror fieldName="ErrorMunicipio" cssClass="error1" /> 

                <s:select list="ListaCatalogo"  listKey="ID_CATALOGO" listValue="VALOR" cssClass="select2"
                          name="objbus.SUBSISTEMA"  headerKey="" headerValue="--SELECCIONE--" /> 
                <s:iterator value="ListaCatalogo" id="ListaCatalogo" status="stat">
                    <s:hidden  name = "ListaCatalogo[%{#stat.index}].ID_CATALOGO" id="ID_CATALOGO"></s:hidden>
                    <s:hidden  name = "ListaCatalogo[%{#stat.index}].VALOR" id="VALOR"></s:hidden>

                </s:iterator>
                <s:fielderror fieldName="ErrorSubsistema" cssClass="error2" />

             

               
                   
                    <s:if test="ListaDatos.size()>0">
                    <div class="tablaUdai" style="margin-top: 120px;" >
                        <div id="div1">
                            <table  width="100%"  >
                                <thead>
                                    <tr>
                                        <td>NOMBRE DE LA ESCUELA</td>
                                        <td>DIRECCIÓN</td>
                                        <td>TIPO DE BACHILLERATO</td>                                                           
                                        <td>LIGA DE CONCURSO</td>

                                    </tr>
                                </thead>
                                <tbody>	
                                    <s:iterator value="ListaDatos" id="ListaDatos" status="stat">
                                        <tr>
                                            <td align="center"><s:property value="NOMESC"/></td>
                                            <td align="center"><s:property value="DIRESC"/></td>
                                            <td align="center"><s:property value="TIPOBACHILLER"/></td>
                                            <td align="center"><a href="<s:property value="LIGACONCURSO"/>" target="black" style="text-decoration:none;color:#333333;"/><s:property value="LIGACONCURSO"/></td>
                                        </tr> 
                                    </s:iterator>
                                </tbody>   
                            </table> 
                        </div>
                    </div>    
                    </s:if>
                    
                    <s:else>
                        
                         <div class="tablaUdai" style="margin-top: 120px;" >
                        <div id="div1">
                            <table  width="100%"  >
                                <thead>
                                    <tr>
                                        <td>NOMBRE DE LA ESCUELA</td>
                                        <td>DIRECCIÓN</td>
                                        <td>TIPO DE BACHILLERATO</td>                                                           
                                        <td>LIGA DE CONCURSO222</td>

                                    </tr>
                                </thead>
                                <tbody>	
                                   
                                        <tr>
                                            <td align="center" rowspan="3">¡No hay información relacionada a tu busqueda!</td>
                                           
                                        </tr> 
                                  
                                </tbody>   
                            </table> 
                        </div>
                    </div>    
                        
                    </s:else>

             
           

         

             </s:form>
                
                <s:if test="ListaDatos.size()>0">
                    
                    <div id="map" style="border-radius: 20px; box-shadow: 3px 6px 8px #A6A6A6; margin-bottom: 60px; margin-top: 30px;"></div>
                </s:if>
                   
                    <s:else>
                        
                        <div id="map2" style="border-radius: 20px; box-shadow: 3px 6px 8px #A6A6A6; margin-bottom: 60px; margin-top: 30px;"></div>
                        
                    </s:else>
                
                
                
                
                

            

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
            
            
            <script>
                function initMap() {
                    var map = new google.maps.Map(document.getElementById('map2'), {
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
                        infowindow.open(marker.get('map2'), marker);
                    });
                }
            </script> 
            
            
            
            
            
            
            <script async defer
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDwUtRSTf7bWX0oThPdQAu1vd5mfJwVrCo&callback=initMap">
            </script>    


               
        
            
            
    </body>
           <div style="background: red; width: 100%; height: 80px; " >1
               
                </div>  
            
</html>
