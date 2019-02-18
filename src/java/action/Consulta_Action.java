package action;



//BEANS

//BUSINESS


//SESION
import beans.Busqueda_Bean;
import beans.Catalogo_Bean;
import beans.Municipio_Bean;
import business.ConsultaBusiness;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;
import utilidades.Constantes;

 
public class Consulta_Action extends ActionSupport{
    //******************instancias**********************************
    Busqueda_Bean objbus=new Busqueda_Bean();
    
    //******************listas******************************************** 
    private ArrayList<Catalogo_Bean>ListaCatalogo=new ArrayList<Catalogo_Bean>();
    private ArrayList<Municipio_Bean>ListaMunicipio=new ArrayList<Municipio_Bean>();
    private ArrayList<Busqueda_Bean>ListaDatos=new ArrayList<Busqueda_Bean>();
    
       private ArrayList<Busqueda_Bean>ListaCarreras=new ArrayList<Busqueda_Bean>();
    
    private boolean BanDatos;
    
     public String CargaDatos() {

        try {
            Constantes.enviaMensajeConsola("si entro");

            ConsultaBusiness con = new ConsultaBusiness();

            //CONSULTA FASE ACTIVA
            ListaCatalogo = (ArrayList<Catalogo_Bean>) con.ConsultaCatalogo("300");
            ListaMunicipio= (ArrayList<Municipio_Bean>) con.ConsultaMunicipio();
            
            
            Constantes.enviaMensajeConsola("listaCatalogo"+ListaCatalogo.size());
            Constantes.enviaMensajeConsola("listaMunicipio"+ListaMunicipio.size());
            
           

            //System.out.println("lista de datos: " + ListaDatos);
        } catch (Exception e) {
            addActionError("Ocurrio un error: " + e);
            return "ERROR";
        }
        return "SUCCESS";
    }
     
     
      public String consultaCarreras() {

        try {
            Constantes.enviaMensajeConsola("si entro");

            ConsultaBusiness con = new ConsultaBusiness();
            System.out.println("Folio"+objbus.getFOLIO2());
            //CONSULTA FASE ACTIVA
           ListaCarreras=(ArrayList<Busqueda_Bean>) con.consultaCarreras(objbus);
           
           objbus.getAUXNOM();
           
           
           
           
            System.out.println("Cantidad carreras%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5"+ListaCarreras.size());
            
        

            //System.out.println("lista de datos: " + ListaDatos);
        } catch (Exception e) {
            addActionError("Ocurrio un error: " + e);
            return "ERROR";
        }
        return "SUCCESS";
    }
    
    public String ConsultaDatos() {

        try {
            
            System.out.println("si entroxxxxxxxxxxxxxxxxxxx");
            ConsultaBusiness con = new ConsultaBusiness();
            
            boolean mun=false;
            boolean sub=false;
            
            if (objbus.getMUNICIPIO().length()>0 ) {
                mun=true;
            } else {
                addFieldError("ErrorMunicipio", "Debe seleccionar un municipio");
                mun=false;
            }
            if (objbus.getSUBSISTEMA().length()>0 ) {
                sub=true;
            } else {
                addFieldError("ErrorSubsistema", "Debe seleccionar un Subsistema");
                sub=false;
            }
            
            if (sub && mun) {
                
                ListaDatos=(ArrayList<Busqueda_Bean>) con.ConsultaDatos(objbus);
                
                Iterator LD=ListaDatos.iterator();
                Busqueda_Bean obj;
                
                while (LD.hasNext()) {
                    obj = (Busqueda_Bean) LD.next();
                    
                    if (obj.getCONCURSO().equals("COMIPEMS")) {
                        
                        obj.setLIGACONCURSO("http://opciones.comipems.org.mx/");
                        
                    }else if (obj.getCONCURSO().equals("103 MUNICIPIOS")) {
                        
                        obj.setLIGACONCURSO("https://ingresoms.edugem.gob.mx/");
                        
                    }else if (obj.getCONCURSO().equals("UAEM")) {
                        obj.setLIGACONCURSO("http://nuevoingreso.uaemex.mx/");             
                    }
                    
                }
                
                
                
                
                if (ListaDatos.size()>0) {
                    BanDatos=true;
                } else {
                    BanDatos=false;
                }
                
               
                
            }else{
                return "ERROR";
            }
             objbus.setFOLIO2("0");
                
            
            
            
        } catch (Exception e) {
            addActionError("Ocurrio un error: " + e);
            return "ERROR";
        }
        return "SUCCESS";
    }

    public Busqueda_Bean getObjbus() {
        return objbus;
    }

    public void setObjbus(Busqueda_Bean objbus) {
        this.objbus = objbus;
    }
    
    
    //***************************SET AND GET DE LISTAS********************************

    public ArrayList<Busqueda_Bean> getListaCarreras() {
        return ListaCarreras;
    }

    public void setListaCarreras(ArrayList<Busqueda_Bean> ListaCarreras) {
        this.ListaCarreras = ListaCarreras;
    }

    
    
    
    public ArrayList<Catalogo_Bean> getListaCatalogo() {
        return ListaCatalogo;
    }

    public void setListaCatalogo(ArrayList<Catalogo_Bean> ListaCatalogo) {
        this.ListaCatalogo = ListaCatalogo;
    }

    public ArrayList<Municipio_Bean> getListaMunicipio() {
        return ListaMunicipio;
    }

    public void setListaMunicipio(ArrayList<Municipio_Bean> ListaMunicipio) {
        this.ListaMunicipio = ListaMunicipio;
    }

    public ArrayList<Busqueda_Bean> getListaDatos() {
        return ListaDatos;
    }

    public void setListaDatos(ArrayList<Busqueda_Bean> ListaDatos) {
        this.ListaDatos = ListaDatos;
    }

    public boolean isBanDatos() {
        return BanDatos;
    }

    public void setBanDatos(boolean BanDatos) {
        this.BanDatos = BanDatos;
    }
    
    
    
    
}