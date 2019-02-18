/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mappers;

import beans.Busqueda_Bean;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author pedro
 */
public class carrerasMapper implements Mapper{
    
    public Object mapRow(ResultSet rs) throws SQLException {
        Busqueda_Bean dat = new Busqueda_Bean();

        if (rs.getString("NUEVOID") != null) {
            dat.setNUEVOID(rs.getString("NUEVOID").trim());
        } else {
            dat.setNUEVOID(rs.getString("NUEVOID"));
        }
         
        if (rs.getString("NOMBRE_CARRERA") != null) {
            dat.setNOMBRE_CARRERA(rs.getString("NOMBRE_CARRERA").trim());
        } else {
            dat.setNOMBRE_CARRERA(rs.getString("NOMBRE_CARRERA"));
        } 
        
       
        return dat;
    
}
}