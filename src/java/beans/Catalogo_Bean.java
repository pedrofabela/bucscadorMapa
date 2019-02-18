package beans;

import java.io.Serializable;


public class Catalogo_Bean implements Serializable {
	private static final long serialVersionUID = -3358884679090829992L;

	private String ID_CATALOGO;
	private String VALOR;
	private String DESCRIPCION;

    public String getID_CATALOGO() {
        return ID_CATALOGO;
    }

    public void setID_CATALOGO(String ID_CATALOGO) {
        this.ID_CATALOGO = ID_CATALOGO;
    }

    public String getVALOR() {
        return VALOR;
    }

    public void setVALOR(String VALOR) {
        this.VALOR = VALOR;
    }

    public String getDESCRIPCION() {
        return DESCRIPCION;
    }

    public void setDESCRIPCION(String DESCRIPCION) {
        this.DESCRIPCION = DESCRIPCION;
    }

    
	 
	
	
}
