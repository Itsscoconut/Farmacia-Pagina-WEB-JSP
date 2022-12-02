<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 11/29/22
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.example.demo.BD" %>
<%@ page import="javax.swing.*" %>
<%@ page import="com.example.demo.Prueba" %>
<%@ page import="java.util.LinkedList" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">

    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
            integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    >
    <link rel="stylesheet" href="../css/style.css">
    <title>Farmacias</title>
</head>
<body>
<header>
    <img src="../images/finder.jpeg" alt="Logo de la Pagina" class="logo-header">
</header>
<nav>
    <ul class="menu-bar">
        <li class="menu-bar-option"><a class="menu-bar-link" href="../index.jsp">Inicio</a></li>
        <li class="menu-bar-option"><a class="menu-bar-link" href="../farmacias.jsp">Farmacias</a></li>
        <li class="menu-bar-option"><a class="menu-bar-link" href="../medicamentos.jsp">Medicamentos</a></li>
        <li class="menu-bar-option"><a class="menu-bar-link" href="../login.jsp">Iniciar Sesion</a></li>
    </ul>
</nav>
<main class="main-pharmacy">

    <%
        LinkedList<String> linkedList =new LinkedList<>();
        linkedList.add("https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d141395.2526903828!2d-79.66657193738362!3d8.965066538271714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8faca8f5ec2b89df%3A0xaab69f7cec5c703b!2sFarmacia%20El%20Javillo%20%7C%20Plaza%20Edison!5e0!3m2!1ses-419!2spa!4v1669964947051!5m2!1ses-419!2spa");

        BD db = new BD();
        Prueba prueba = new Prueba();
        db.getConnection();

    %>


    <div class="search-bar">
        <input type="text" placeholder="¿Que desea Buscar?" required>
        <div class="btn-search-bar">
            <button type="submit">
                <i class="fas fa-search icon"></i>
            </button>
        </div>
    </div>

    <div class="pharmacy">
        <div class="img-pharmacy">
            <img src="../images/medicinas/amoxicilina.png" alt="logo de farmacia" class="logo-pharmacy">
        </div>
        <div class="position-table">
            <div class="table-tittle">
                <h3 class="posit-text-title">
                    <%
                        out.write(prueba.getNombreMedicamento("Amoxicilina"));
                    %>
                </h3>
            </div>
            <div class="table-desc">
                <p class="posit-text-desc">
                    Descripcion de la Farmacia
                </p>
            </div>
            <div class="table-link-ubication">
                <a id="1" href="viaespana.jsp" class="link-ubication-pharmacy">
                    <%
                        out.write(prueba.getPrecio("Amoxicilina"));
                    %>
                </a>
            </div>
        </div>
    </div>

    <div class="pharmacy">
        <div class="img-pharmacy">
            <img src="../images/medicinas/vitamina.jpeg" alt="logo de farmacia" class="logo-pharmacy">
        </div>
        <div class="position-table">
            <div class="table-tittle">
                <h3 class="posit-text-title">
                    <%
                        out.write(prueba.getNombreMedicamento("Vitamina c"));
                    %>
                </h3>
            </div>
            <div class="table-desc">
                <p class="posit-text-desc">
                    Descripcion de la Farmacia
                </p>
            </div>
            <div class="table-link-ubication">
                <a href="plazaedison.jsp"  class="link-ubication-pharmacy">
                    <%
                        out.write(prueba.getPrecio("Vitamina c"));
                    %>
                </a>
            </div>
        </div>
    </div>

    <div class="pharmacy">
        <div class="img-pharmacy">
            <img src="../images/medicinas/omega.png" alt="logo de farmacia" class="logo-pharmacy">
        </div>
        <div class="position-table">
            <div class="table-tittle">
                <h3 class="posit-text-title">
                    <%
                        out.write(prueba.getNombreMedicamento("Omega 3"));
                    %>
                </h3>
            </div>
            <div class="table-desc">
                <p class="posit-text-desc">
                    Descripcion de la Farmacia
                </p>
            </div>
            <div class="table-link-ubication">
                <a href="avedomingodiaz.jsp" class="link-ubication-pharmacy">
                    <%
                        out.write(prueba.getPrecio("Omega 3"));
                    %>
                </a>
            </div>
        </div>
    </div>

    <div class="pharmacy">
        <div class="img-pharmacy">
            <img src="../images/medicinas/paracetamol.png" alt="logo de farmacia" class="logo-pharmacy">
        </div>
        <div class="position-table">
            <div class="table-tittle">
                <h3 class="posit-text-title">
                    <%
                        out.write(prueba.getNombreMedicamento("Paracetamol"));
                    %>
                </h3>
            </div>
            <div class="table-desc">
                <p class="posit-text-desc">
                    Descripcion de la Farmacia
                </p>
            </div>
            <div class="table-link-ubication">
                <a href="veraguas.jsp" class="link-ubication-pharmacy">
                    <%
                        out.write(prueba.getPrecio("Paracetamol"));
                    %>
                </a>
            </div>
        </div>
    </div>

    <div class="pharmacy">
        <div class="img-pharmacy">
            <img src="../images/medicinas/Aspiri.png" alt="logo de farmacia" class="logo-pharmacy">
        </div>
        <div class="position-table">
            <div class="table-tittle">
                <h3 class="posit-text-title">
                    <%
                        out.write(prueba.getNombreMedicamento("Aspirina"));
                    %>
                </h3>
            </div>
            <div class="table-desc">
                <p class="posit-text-desc">
                    Descripcion de la Farmacia
                </p>
            </div>
            <div class="table-link-ubication">
                <a  href="arraijan.jsp" class="link-ubication-pharmacy">
                    <%
                        out.write(prueba.getPrecio("Aspirina"));
                    %>
                </a>
            </div>
        </div>
    </div>
    <div class="mapa-url">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63054.64355437466!2d-79.5903947989637!3d8.979948626186193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8faca8f5ec2b89df%3A0xaab69f7cec5c703b!2sFarmacia%20El%20Javillo%20%7C%20Plaza%20Edison!5e0!3m2!1ses-419!2spa!4v1669970678801!5m2!1ses-419!2spa" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>

</main>
<footer>
    <ul>

    </ul>
</footer>
</body>
</html>