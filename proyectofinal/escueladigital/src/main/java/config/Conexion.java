/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.*;


/**
 *
 * @author tomas
 */
public class Conexion {
    public Connection getConection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con =DriverManager.getConnection("jdbc:mysql://localhost:3306/comision2160", "tomas", "1234");
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e.toString());
        
        } 
        return con;
    }
    /*public static void main(String[] lelis) throws SQLException{
        Connection conexion=null;
        Conexion con = new Conexion();
        conexion = con.getConection();
        
        PreparedStatement ps;
        ResultSet rs;
        ps = conexion.prepareStatement("SELECT * FROM participantes");
        rs = ps.executeQuery();
        while(rs.next()){
            int id = rs.getInt("id");
            String nombre = rs.getString("nombres");
            String apellidos = rs.getString("apellidos");
            String email = rs.getString("email");
            int telefono = rs.getInt("telefono");
            System.out.println("Id: "+ id + " Nombre: "+nombre+" Apellido: "+apellidos+" email: "+email+" Telefono: "+telefono);
        }
        
    }*/
}
