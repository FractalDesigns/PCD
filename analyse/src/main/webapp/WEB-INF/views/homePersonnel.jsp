<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/resources/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/resources/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
  
 <body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            <div class="navbar-header">
                <a class="navbar-brand" href="home">Analyse Financière</a>
            </div>
            <!-- /.navbar-header -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                       
<!--                         make dropdown forms -->

<li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> Formulaires<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                	<script> function insereractif() {
                                		$("#form_container").load("insereractifC");
                                		$(".page-header").text("Inserer actif courant");
                                	}</script>
                                    <a  onclick ="insereractif()"href="#insereractifcourant">Actif Courant</a>
                                    
                                </li>
                                <li><script> function insereractifNC() {
                                		$("#form_container").load("insereractifNC");
                                		$(".page-header").text("Inserer actif non courant");
                                	}</script>
                                    <a onclick ="insereractifNC()" href="#insereractifNC">Actif non Courant</a>
                                </li>
                                <li><script> function insererpassifC() {
                                		$("#form_container").load("insererpassifC");
                                		$(".page-header").text("Inserer passif courant");
                                	}</script>
                                    <a onclick ="insererpassifC()" href="#insererpassifC">Passif Courant</a>
                                </li>
                                <li><script> function insererpassifNC() {
                                		$("#form_container").load("insererpassifNC");
                                		$(".page-header").text("Inserer passif non courant");
                                	}</script>
                                    <a onclick ="insererpassifNC()" href="#insererpassifNC">Passif non Courant</a>
                                </li>
                                <li><script> function insererDonneesEffetDeLevier() {
                                		$("#form_container").load("insererDonneesEffetDeLevier");
                                		$(".page-header").text("Inserer donnees effet de levier");
                                	}</script>
                                    <a onclick ="insererDonneesEffetDeLevier()" href="#insererDonneesEffetDeLevier">Effet De Levier</a>
                                </li>
                                <li><script> function insererProjet() {
                                		$("#form_container").load("insererProjet");
                                		$(".page-header").text("Inserer donnees effet de levier");
                                	}</script>
                                    <a onclick ="insererProjet()" href="#insererProjet">Projet</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
<!--                         end  of drop down form -->  
                       <li>
                       <c:url value="/j_spring_security_logout" var="logoutUrl" />
                        <a href="${logoutUrl}"><i class="fa fa-sign-out fa-fw"></i> Se déconnecter</a>
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper" style="min-height: 533px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">file d'actualité</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/dist/js/sb-admin-2.js"></script>




</body> 
 </html>
