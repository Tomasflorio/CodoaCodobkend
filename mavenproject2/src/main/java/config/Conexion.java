/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tomas
 */
public class Conexion {
   public String driver = "com.mysql.cj.jdbc.Driver";
   public Connection getConection() {
       Connection conexion = null;
       try{
           Class.forName(driver);
           conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/codoacodo","root","");
       }catch(SQLException e){
       System.out.println(e.toString());
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
       }
       return conexion;
   }
   public static void main(String [] argms) throws SQLException, ClassNotFoundException{
       Connection conexion = null;
       Conexion con = new Conexion();
       conexion = con.getConection();
       PreparedStatement  ps;
       ResultSet rs;
       ps = conexion.prepareStatement("SELECT * FROM participantes");
       rs = ps.executeQuery();
       while (rs.next()){
           int id = rs.getInt("id");
           String nombres = rs.getString("nombre");
           String sexo = rs.getString("sexo");
           
           System.out.println("id: "+ id + "nombre: "+ nombres+"sexo: "+sexo);
       }
   }
      
}
