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
    
    <script src="${pageContext.request.contextPath}/resources/js/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/highcharts-3d.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/exporting.js"></script>

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
                            <a href="home"><i class="fa fa-dashboard fa-fw"></i>Tableau de bord</a>
                         <ul class="nav nav-second-level collapse">
                                <li>
                                <script> function insertPieBilan() {
                                		$("#form_container").load("pieBilan");
                                		$(".page-header").text("Composition du bilan financier pour cette année");
                                	}
                                </script>
                                    <a  onclick ="insertPieBilan()"href="#insertPieBilan">Bilan Financier</a>
                                    
                                </li>
                                <li>
                                <script> function insertPieBFR() {
                                		$("#form_container").load("pieBFR");
                                		$(".page-header").text("Composition des besoins en fonds de roulement pour cette année");
                                	}
                                </script>
                                    <a  onclick ="insertPieBFR()"href="#insertPieBFR">Besoins en fonds de roulement</a>
                                    
                                </li>
                          </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                <script> function insertChartSolvabilite() {
                                		$("#form_container").load("chartSolvabilite");
                                		$(".page-header").text("Evolution de la solvabilité");
                                	}
                                </script>
                                    <a  onclick ="insertChartSolvabilite()"href="#insertChartSolvabilite">Ratios de solvabilite</a>
                                    
                                </li>
                                <li>
                                <script> function insertChartLiquidite() {
                                		$("#form_container").load("chartLiquidite");
                                		$(".page-header").text("Evolution de la liquidité");
                                	}
                                </script>
                                    <a  onclick ="insertChartLiquidite()"href="#chartLiquidite">Ratios de liquidité</a>
                                    
                                </li>
                                <li>
                                <script> function insertChartBilan() {
                                		$("#form_container").load("insertChartBilan");
                                		$(".page-header").text("Evolution des analyses du bilan financier");
                                	}
                                </script>
                                    <a  onclick ="insertChartBilan()"href="#insertChartBilan">Analyse du bilan</a>
                                    
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            
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
<li>                    <a href="#"><i class="fa fa-edit fa-fw"></i> Bilan Financier<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                            <li>
                                	<script> function afficheractifcourant() {
                                		$("#form_container").load("AffichActifCourant");
                                		$(".page-header").text("Actif courant");
                                	}</script>
                                    <a  onclick ="afficheractifcourant()"href="#afficheractifcourant">Actif Courant</a>
                                    
                            </li>
                            <li>
                                	<script> function afficheractifnoncourant() {
                                		$("#form_container").load("AffichActifNonCourant");
                                		$(".page-header").text("Actif non courant");
                                	}</script>
                                    <a  onclick ="afficheractifnoncourant()"href="#afficheractifnoncourant">Actif Non Courant</a>
                                    
                            </li>
                            <li>
                                	<script> function afficherpassifcourant() {
                                		$("#form_container").load("AffichPassifCourant");
                                		$(".page-header").text("Passif courant");
                                	}</script>
                                    <a  onclick ="afficherpassifcourant()"href="#afficherpassifcourant">Passif Courant</a>
                                    
                            </li>
                            <li>
                                	<script> function afficherpassifnoncourant() {
                                		$("#form_container").load("AffichPassifNonCourant");
                                		$(".page-header").text("Passif non courant");
                                	}</script>
                                    <a  onclick ="afficherpassifnoncourant()"href="#afficherpassifnoncourant">Passif Non Courant</a>
                                    
                            </li>
                            
                                
                                </ul>
                                </li>
<li>                    <a href="#"><i class="fa fa-edit fa-fw"></i> Analyses <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                            <li>
                                	<script> function analyseBilan() {
                                		$("#form_container").load("choixAnnee");
                                		$(".page-header").text("Analyse du bilan financier");
                                	}</script>
                                    <a  onclick ="analyseBilan()"href="#analyseBilan">Analyse du bilan</a>
                                    
                            </li>
                            <li>
                                	<script> function analyseEtatEntreprise() {
                                		$("#form_container").load("choixAnnee2");
                                		$(".page-header").text("Analyse des ratios");
                                	}</script>
                                    <a  onclick ="analyseEtatEntreprise()"href="#analyseEtatEntreprise">Analyse des ratios</a>
                                    
                            </li>
                            <li>
                                	<script> function analyseEffetDeLevier() {
                                		$("#form_container").load("choixAnnee3");
                                		$(".page-header").text("Analyse effet de levier");
                                	}</script>
                                    <a  onclick ="analyseEffetDeLevier()"href="#analyseEffetDeLevier">Analyse effet de levier</a>
                                    
                            </li>
                             <li>
                                	<script> function analyseProjet() {
                                		$("#form_container").load("analyseProjet");
                                		$(".page-header").text("Analyse des projets");
                                	}</script>
                                    <a  onclick ="analyseProjet()"href="#analyseProjet">Analyse Projet</a>
                                    
                            </li>
                            </ul>                                   
</li>
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
