<%@ page import="dao.StudenteDAO" %>
<%@ page import="dao.DocenteDAO" %>
<%@ page import="dao.CorsoDAO" %>
<%@ page import="dao.PrenotazioneDAO" %><%--
  Created by IntelliJ IDEA.
  User: Lorenzo
  Date: 04/11/2018
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../../css/bootstrap/bootstrap.min.css">
        <!-- Fontawesome CSS -->
        <link rel="stylesheet" href="../../css/fontawesome.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="../../css/style.css">

        <title>Admin Dashboard</title>
    </head>
    <body>
    <div class="wrapper">
        <!-- Sidebar -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <a href="#"><h3>Benvenuto <% out.print(session.getAttribute("username"));%>!</h3>
            </div>

            <ul class="list-unstyled components">
                <li class="active">
                    <a href="#">Dashboard</a>
                </li>
                <li>
                    <a href="#studenti" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Studenti</a>
                    <ul class="collapse list-unstyled" id="studenti">
                        <li>
                            <a href="studenti.jsp">Elenco studenti</a>
                        </li>
                        <li>
                            <a href="ins_studente.jsp">Inserisci studente</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#docenti" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Docenti</a>
                    <ul class="collapse list-unstyled" id="docenti">
                        <li>
                            <a href="docenti.jsp">Elenco docenti</a>
                        </li>
                        <li>
                            <a href="ins_docente.jsp">Inserisci docente</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#corsi" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Corsi</a>
                    <ul class="collapse list-unstyled" id="corsi">
                        <li>
                            <a href="#">Elenco corsi</a>
                        </li>
                        <li>
                            <a href="#">Inserisci corso</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#prenotazioni" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Prenotazioni</a>
                    <ul class="collapse list-unstyled" id="prenotazioni">
                        <li>
                            <a href="#">Elenco prenotazioni</a>
                        </li>
                        <li>
                            <a href="#">Inserisci prenotazione</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="navbar-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>
                    <!-- Aggiungere icona omino -->
                </div>
            </nav>
            <div class="container">
                <h1 class="page-header">Dashboard</h1>
                <hr>
                <br>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-lg-3 jumbotron jumbotron-no-radius text-center">
                        <button onclick="location.href='studenti.jsp';" class="btn btn-transparent"><i class="fa fa-users fa-5x"></i></button>
                        <p><%out.print(StudenteDAO.getN());%> Studenti</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 jumbotron jumbotron-no-radius text-center">
                        <button onclick="location.href='docenti.jsp';" class="btn btn-transparent"><i class="fa fa-chalkboard-teacher fa-5x"></i></button>
                        <p><%out.print(DocenteDAO.getN());%> Docenti</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 jumbotron jumbotron-no-radius text-center">
                        <button class="btn btn-transparent"><i class="fa fa-book fa-5x"></i></button>
                        <p><%out.print(CorsoDAO.getN());%> Corsi</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 jumbotron jumbotron-no-radius text-center">
                        <button class="btn btn-transparent"><i class="fa fa-clock fa-5x"></i></button>
                        <p><%out.print(PrenotazioneDAO.getN());%> Prenotazioni</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Font Awesome JS -->
    <script src="../../js/fontawesome.min.js"></script>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
            integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
            crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="../../js/bootstrap/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
    </body>
</html>