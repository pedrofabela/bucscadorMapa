package daos;

import beans.Busqueda_Bean;
import java.util.List;
import mappers.CatalogoMapper;
import mappers.DatosMapper;
import mappers.MunicipioMapper;
import mappers.carrerasMapper;

public class ConsultasDAOImpl extends OracleDAOFactory implements ConsultasDAO {

    OracleDAOFactory oraDaoFac = new OracleDAOFactory();

    public List ConsultaCatalogo(String Valor) throws Exception {
        String query = "SELECT ID_CATALOGO,VALOR,DESCRIPCION FROM CATALOGO WHERE ID_CATPADRE='" + Valor + "' AND TIPO<>'1' ORDER BY ID_CATALOGO";
        System.out.println("QueryConsultaCatalogo ---> " + query);
        List list = null;
        list = queryForList(query, new CatalogoMapper());
        return list;
    }

    public List ConsultaMunicipio() throws Exception {
        String query = "SELECT CVEMUNICIPIO,DESCRIPCION FROM MUNICIPIOS ORDER BY CVEMUNICIPIO";
        //System.out.println("QueryConsultaCatalogo ---> " + query);
        List list = null;
        list = queryForList(query, new MunicipioMapper());
        return list;
    }

    public List ConsultaDatos(Busqueda_Bean objbus) throws Exception {
        String query = "SELECT E.FOLIO, E.CLAVE_CCT, E.NOMBRE||' '||E.NUEVOID AS NOMBRE, E.CALLE, "
                + "(SELECT DESCRIPCION FROM CATALOGO CA WHERE CA.ID_CATPADRE='300' AND CA.ID_CATALOGO=E.SUBSISTEMA) AS SUBSISTEMA, "
                + "TRIM(REPLACE(E.LATITUD,',','.')) AS LATITUD, TRIM(REPLACE(E.LONGITUD,',','.')) AS LONGITUD, E.CONCURSO  "
                + "FROM ESCUELA E "
                + "WHERE E.CVEMUNICIPIO='"+objbus.getMUNICIPIO()+"' AND E.SUBSISTEMA='"+objbus.getSUBSISTEMA()+"'";
        System.out.println("QueryConsultaCatalogo ---> " + query);
        List list = null;
        list = queryForList(query, new DatosMapper());
        return list;
    }

     public List consultaCarreras(Busqueda_Bean objbus) throws Exception {
        String query = "SELECT CATALOGO.NUEVOID, CATALOGO.VALOR AS NOMBRE_CARRERA FROM ESCUELA, ESPECIALIDAD_ESC, CATALOGO  WHERE ESCUELA.CONCURSO='103 MUNICIPIOS' AND ESPECIALIDAD_ESC.FOLIO_ESCUELA=ESCUELA.FOLIO AND ESPECIALIDAD_ESC.CLAVE_ESPECIALIDAD=CATALOGO.ID_CATALOGO AND CATALOGO.ID_CATPADRE=500 AND FOLIO='"+objbus.getFOLIO2()+"' AND ESPECIALIDAD_ESC.PRIMERA=1";
        System.out.println("QueryConsultaCatalogo ---> " + query);
        List list = null;
        list = queryForList(query, new carrerasMapper());
        return list;
    }
}
