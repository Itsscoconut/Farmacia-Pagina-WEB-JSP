package com.example.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Prueba {
    BD db = new BD();
    private ResultSet resultSet;
    private Connection cnn;

    public String getNombreMedicamento(String code){
        String sql="";
        String resultado="";
        try{
            // where Nombre_de_farmacia='"+code+"'"
            sql = "SELECT nombre_de_medicamento FROM medicamentos where nombre_de_medicamento='"+code+"'";
            resultSet = db.ExecuteQuery(sql);

            while (resultSet.next()){
                resultado = resultSet.getString("nombre_de_medicamento");
                System.out.println(resultSet.getString("nombre_de_medicamento"));

            }

            db.close();
        }catch(Exception e){
            System.err.println("ERROR IN: getNombreFarmacia ==> "+e.toString());
        }
        return resultado;
    }


    public String getPrecio(String code){
        String sql="";
        String resultado="";
        try{
            // where Nombre_de_farmacia='"+code+"'"
            sql = "SELECT nombre_de_medicamento, Precio FROM medicamentos WHERE nombre_de_medicamento='"+code+"'";
            resultSet = db.ExecuteQuery(sql);

            while (resultSet.next()){
                resultado = resultSet.getString("Precio");
                System.out.println(resultSet.getString("Precio"));

            }

            db.close();
        }catch(Exception e){
            System.err.println("ERROR IN: getNombreFarmacia ==> "+e.toString());
        }
        return resultado;
    }


    public boolean existeUsuario(String user, String clave, BD conexion) throws SQLException {
        //LinkedList<Usuario> lista = new LinkedList<>();
        Connection cnn;
        try{
            cnn = conexion.con();
            PreparedStatement ps = cnn.prepareStatement("SELECT usuario, contraseña FROM usuario " +
                    "where usuario = ? and contraseña = ?");
            ps.setString(1,user);
            ps.setString(2,clave);
            resultSet = ps.executeQuery();
            return resultSet.next();
        }catch (SQLException sqlException){
            // Objects.requireNonNull(cnn).close();
            throw new SQLException("mensaje "+sqlException);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /*public boolean existeUsuario(String user, String clave, BD base){
        try{
            cnn = base.con();
            PreparedStatement ps = cnn.prepareStatement("SELECT usuario, clave FROM administrador " +
                    "where usuario = ? and clave = ?");
            ps.setString(1,user);
            ps.setString(2,clave);
            resultSet = ps.executeQuery();
            return resultSet.next();
        }catch(Exception e){
            System.err.println("ERROR IN: getNombreFarmacia ==> "+e.toString());
        }
        return false;
    }*/

}
