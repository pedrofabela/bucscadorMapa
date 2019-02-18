package beans;

import java.io.Serializable;


public class Municipio_Bean implements Serializable {
	private static final long serialVersionUID = -3358884679090829992L;

	private String CVEMUNICIPIO;
	private String DESCRIPCION;

    public String getCVEMUNICIPIO() {
        return CVEMUNICIPIO;
    }

    public void setCVEMUNICIPIO(String CVEMUNICIPIO) {
        this.CVEMUNICIPIO = CVEMUNICIPIO;
    }

    public String getDESCRIPCION() {
        return DESCRIPCION;
    }

    public void setDESCRIPCION(String DESCRIPCION) {
        this.DESCRIPCION = DESCRIPCION;
    }
        
        
	
	
}
