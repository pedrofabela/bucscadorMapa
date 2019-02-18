/**
 *
 * @author Esteban
 */
 
package daos;

;
import beans.Busqueda_Bean;
import java.util.List;

public interface ConsultasDAO {
    
    public List ConsultaCatalogo(String Valor) throws Exception;
    public List ConsultaMunicipio() throws Exception;
    public List ConsultaDatos(Busqueda_Bean objbus) throws Exception;
    public List consultaCarreras(Busqueda_Bean objbus) throws Exception;  
    
    
}