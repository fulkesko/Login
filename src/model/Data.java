
package model;

import java.sql.ResultSet;
import java.sql.SQLException;


public class Data {
    
    private Conexion con;
    
    public Data() throws ClassNotFoundException, SQLException{
        con = new Conexion("sesiones");
    }
    
 


public int ValidarUsuario(Usuario u) throws SQLException{
    int contador = 0;
    ResultSet rs = con.ejecutar("CALL sesiones.buscar('"+u.nombre+"','"+u.clave+"');");
    if(rs.next()){
        contador = rs.getInt(1);
    }
    return contador;
};  


}
