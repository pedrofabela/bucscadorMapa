

package business;

import beans.Busqueda_Bean;
import daos.ConsultasDAO;
import daos.ConsultasDAOImpl;
import java.util.List;

 

public class ConsultaBusiness {
    
    private ConsultasDAO con;

    public ConsultaBusiness() throws Exception{
        this.con = new ConsultasDAOImpl();
    }
	
    public List ConsultaCatalogo(String valor) throws Exception{
        List lista = this.con.ConsultaCatalogo(valor);
        return lista;
    }
    
    public List ConsultaMunicipio() throws Exception{
        List lista = this.con.ConsultaMunicipio();
        return lista;
    }
    
    public List ConsultaDatos(Busqueda_Bean objbus) throws Exception{
        List lista = this.con.ConsultaDatos(objbus);
        return lista;
    }
    
     public List consultaCarreras(Busqueda_Bean objbus) throws Exception{
        List lista = this.con.consultaCarreras(objbus);
        return lista;
    }
}