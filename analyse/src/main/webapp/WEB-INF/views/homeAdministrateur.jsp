<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Analyse Financière</title>

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
                       

<li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> Gestion Utilisateurs <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                	<script> function insererUtilisateur() {
                                		$("#form_container").load("InsertionUtilisateur");
                                		$(".page-header").text("Inserer Utilisateur");
                                	}</script>
                                    <a  onclick ="insererUtilisateur()"href="#insererUtilisateur">Insertion</a>
                                    
                                </li>
                                <li><script> function modifierUtilisateur() {
                                		$("#form_container").load("ModificationUtilisateur");
                                		$(".page-header").text("Modifier Utilisateur");
                                	}</script>
                                    <a onclick ="modifierUtilisateur()" href="#modifierUtilisateur">Modification</a>
                                </li>
                                <li><script> function supprimerUtilisateur() {
                                		$("#form_container").load("SuppressionUtilisateur");
                                		$(".page-header").text("Supprimer Utilisateur");
                                	}</script>
                                    <a onclick ="supprimerUtilisateur()" href="#supprimerUtilisateur">Suppression</a>
                                </li>
                                <li><script> function afficherUtilisateur() {
                                		$("#form_container").load("AffichUtilisateur");
                                		$(".page-header").text("Liste des Utilisateurs");
                                	}</script>
                                    <a onclick ="afficherUtilisateur()" href="#afficherUtilisateur">Affichage</a>
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
                        <h1 class="page-header">Blank</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div id ="form_container" class='row'></div>
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

<script type="text/javascript">

</script>


</body> 
 </html>
