<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 12/2/22
  Time: 4:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.example.demo.Prueba" %>
<%@ page import="com.example.demo.BD" %>
<!doctype html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login</title>
  <link rel="stylesheet" href="css/login.css">
  <%!
    Prueba prueba = new Prueba();
    BD bd = new BD();
  %>
</head>
<body>
<%
  if (request.getParameter("user") == null
          || request.getParameter("clave") == null)        {
%>
<div class = "wrapper caja1">
  <div id="formcontent">
    <h2 class = "active"> Inicio de Sesion de Administrador</h2>
    <div class = "container">
      <img src ="logo.png" id="icon" alt="logo"/>
    </div>
    <form>
      <label>
        <input name="user" placeholder="Usuario">
        <input name="clave" placeholder="Clave">
        <input type="submit" value="Iniciar Sesion">
      </label>
    </form>
    <div id ="footer">
      <a class ="underlineHover" href="#"> Olvido su Clave?</a>
    </div>
  </div>

</div>
<%
  }else {
    String user = request.getParameter("user");
    String pass = request.getParameter("clave");

    try {
      if (prueba.existeUsuario(user, pass, bd)) {
        out.print("<h1> Hola, Bienvenido " + user + " </h1>" +
                "<a href=\"myFile.jsp\">Medicamentos</a>" +
                "<br>" +
                "<a href=\"myFile.jsp\">Farmacias</a>" +
                "<br>" +
                "<a href=\"index.jsp\">Salir</a>" +
                "<br>");
      } else {
        out.print("<center> <h1>Datos Incorrectos</h1> </center>");
      }
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
  }
%>
</body>
</html>