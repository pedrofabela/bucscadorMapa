package mappers;

import beans.Catalogo_Bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CatalogoMapper implements Mapper {

    public Object mapRow(ResultSet rs) throws SQLException {
        Catalogo_Bean dat = new Catalogo_Bean();

        if (rs.getString("ID_CATALOGO") != null) {
            dat.setID_CATALOGO(rs.getString("ID_CATALOGO").trim());
        } else {
            dat.setID_CATALOGO(rs.getString("ID_CATALOGO"));
        }
        
         if (rs.getString("VALOR") != null) {
            dat.setVALOR(rs.getString("VALOR").trim());
        } else {
            dat.setVALOR(rs.getString("VALOR"));
        }
         
        if (rs.getString("DESCRIPCION") != null) {
            dat.setDESCRIPCION(rs.getString("DESCRIPCION").trim());
        } else {
            dat.setDESCRIPCION(rs.getString("DESCRIPCION"));
        } 
        

        return dat;
    }

}
