package mappers;

import beans.Busqueda_Bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DatosMapper implements Mapper {

    public Object mapRow(ResultSet rs) throws SQLException {
        Busqueda_Bean dat = new Busqueda_Bean();

        if (rs.getString("NOMBRE") != null) {
            dat.setNOMESC(rs.getString("NOMBRE").trim());
        } else {
            dat.setNOMESC(rs.getString("NOMBRE"));
        }
         
        if (rs.getString("CALLE") != null) {
            dat.setDIRESC(rs.getString("CALLE").trim());
        } else {
            dat.setDIRESC(rs.getString("CALLE"));
        } 
        
        if (rs.getString("SUBSISTEMA") != null) {
            dat.setTIPOBACHILLER(rs.getString("SUBSISTEMA").trim());
        } else {
            dat.setTIPOBACHILLER(rs.getString("SUBSISTEMA"));
        } 
        
        if (rs.getString("LATITUD") != null) {
            dat.setLATITUD(rs.getString("LATITUD").trim());
        } else {
            dat.setLATITUD(rs.getString("LATITUD"));
        } 
        
        if (rs.getString("LONGITUD") != null) {
            dat.setLONGITUD(rs.getString("LONGITUD").trim());
        } else {
            dat.setLONGITUD(rs.getString("LONGITUD"));
        } 
        
        if (rs.getString("CONCURSO") != null) {
            dat.setCONCURSO(rs.getString("CONCURSO").trim());
        } else {
            dat.setCONCURSO(rs.getString("CONCURSO"));
        } 
        
         if (rs.getString("FOLIO") != null) {
            dat.setFOLIO(rs.getString("FOLIO").trim());
        } else {
            dat.setFOLIO(rs.getString("FOLIO"));
        } 
         
          
          
           if (rs.getString("CLAVE_CCT") != null) {
            dat.setCLAVE_CCT(rs.getString("CLAVE_CCT").trim());
        } else {
            dat.setCLAVE_CCT(rs.getString("CLAVE_CCT"));
        } 

        return dat;
    }

}
