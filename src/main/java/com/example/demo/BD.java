package com.example.demo;

import java.sql.*;

public class BD {
    String url, user, pass;
    Connection connection;
    Statement statement;
    ResultSet resultSet;

    public BD(){
        url = "jdbc:mysql://localhost/farmacia?userSSL=false";
        user = "root";
        pass = "";
    }

    public void open(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
            statement = connection.createStatement();
        } catch(Exception e){
            System.err.println("ERROR IN: open/DB ==> "+e.toString());
        }
    }

    public void close(){
        try{
            resultSet.close();
            statement.close();
            connection.close();
        }catch(Exception e){
            System.err.println("ERROR IN: close/DB ==> "+e.toString());
        }
    }

    public ResultSet ExecuteQuery(String sql){
        try{
            open();
            resultSet = statement.executeQuery(sql);

        }catch (Exception e){
            System.err.println("ERROR IN: ExecuteQuery/DB ==> "+e.toString());
        }

        return resultSet;
    }


    public Connection con(){
        open();
        return connection;
    }

    public  Connection getConnection(){
        Connection connection = null;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection("jdbc:mysql://localhost/animales?user=root&password=");
            System.out.println("Conexion Satisfactoria");
        } catch(Exception e){
            System.out.println("Error de Conexion " + e.toString());
        }

        return connection;
    }




}
