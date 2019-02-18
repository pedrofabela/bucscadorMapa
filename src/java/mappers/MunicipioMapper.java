package mappers;

import beans.Municipio_Bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MunicipioMapper implements Mapper {

    public Object mapRow(ResultSet rs) throws SQLException {
        Municipio_Bean dat = new Municipio_Bean();

        if (rs.getString("CVEMUNICIPIO") != null) {
            dat.setCVEMUNICIPIO(rs.getString("CVEMUNICIPIO").trim());
        } else {
            dat.setCVEMUNICIPIO(rs.getString("CVEMUNICIPIO"));
        }
         
        if (rs.getString("DESCRIPCION") != null) {
            dat.setDESCRIPCION(rs.getString("DESCRIPCION").trim());
        } else {
            dat.setDESCRIPCION(rs.getString("DESCRIPCION"));
        } 
        

        return dat;
    }

}
