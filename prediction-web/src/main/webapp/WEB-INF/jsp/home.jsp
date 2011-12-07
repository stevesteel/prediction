<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
	<meta name="description" content="Prediction elections 2012">
	<title>Prediction</title>
	<link href="./resources/styles/default.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="./resources/js/tween.js"></script>
	<script type="text/javascript" src="./resources/js/mootools.js"></script>
	<script type="text/javascript" src="./resources/js/mootools-more.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/dataHandler.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/geoDataHandler.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/utils.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/threemap.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/pie.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/chart.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/barChart.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/rapahel.js"></script>
	<script type="text/javascript" src="./resources/js/prediction/region.js"></script>
	<script type="text/javascript" src="./resources/js/highcharts/adapters/mootools-adapter.src.js"></script>
	<script type="text/javascript" src="./resources/js/highcharts/highcharts.src.js"></script>
		<!-- 1a) Optional: add a theme file -->
		<script type="text/javascript" src="./resources/js/highcharts/themes/gray.js"></script>
		<!-- 1b) Optional: the exporting module 
		<script type="text/javascript" src="./resources/js/highcharts/modules/exporting.js"></script>-->
</head>
<body>
	<div id="mapTip"></div>
	<div id="container">
		<div id="vote"></div>
			<div class="header">
				<div class="left">
					<div class="selectBloc">
						<h1>Vous visualisez <span id="visualizationType" class="tooltips">la tendance</span> pour <span id="visualizationTarget">tous les candidats</span>.</h1>
						<div class="details">
							<span id="visualizationDate" >Voici les r�sultats du premier tour des �lections 2012 ! <image class="tooltips" rel="<span class='italic'>Nous ne nous contentons pas d'additionner des chiffres !</span><br />Chaque donn�e est analys�es en d�tail grace � une intelligence artificielle.<br />Ce traitement nous permet de d�gager des tendances g�n�rales et ainsi de pr�dire<br/> le r�sultat des �lections de 2012 !" title="Pr�diction des r�sultats du premier tour de 2012" style="width: 20px; height: 20px" src="resources/images/help.png" /></span><br />
							Evenements : <span id="visualizationEvent">Pr�sidentielles !</span>
						</div>
					</div>
				</div>
				<div class="clear;"></div>
			</div>
		<div class="left">
			<div id="leftColomn">
				<div id="help">
					<h2>Que voyez vous ?</h2>
					Voici une analyse s�mantique des elections 2012 pr�sentes sur les <span class="tooltips underline" rel="twitter, articles de tweets, google, blogs, grand journaux etc." title="Plein de m�dias webs sont utilis�s ! ">m�dias web</span> permettant de <span class="bold">pr�dire le r�sultat des �lections!</span><br /><br />
					<div >
						Selectionnez un type <span class="bold">d'opinion</span> ou un <span class="bold">th�me</span> sur les menus de droite pour changer le type d'affichage.<br /><br />
						Vous pouvez ensuite <span class="bold">naviguer dans le temps </span>, et associer des <span class="bold">�v�nements</span> aux donn�es (<img src="resources/images/star.png" />).  <br /><br />
						<span class="bold">Affinez par candidat</span> en cliquant sur le camembert.<br /><br />
						<a title="d�couvrir d'ou viennent les donn�es" class="blueButton" href="./ccm">D'ou viennent les donn�es ?</a>
						<!-- 
						<a class="redButton" href="#">Faites parti des donn�es</a>
						 -->
					</div>
				</div>
				<div id="candidatInfo">
					<h2 id="candidatName">Francois Hollande</h2>
					Parti : <a title="le parti de ce candidat" id="parti" target="_blank" src="image/ps.jpg">azesqd</a><br />
					Flux d'informations :
					<div id="candidatImage" class="candidateFrame">
						
					</div>
					<img class="parti" id="partiImage" src="image/ps.jpg" />
					<!-- 
					<a title="le programme de ce candidat" href="#">Voir le programme</a>
					 -->
				</div>				
			</div>
		</div>
		<div id="middleColomn">
			<div id="access">
				Chargement en cours... 
				<div id="nojs">
					Vous ne parvenez pas � acc�der au contenu ? <br />
					tendance2012 est accessible pour tous. <br />
					<a title="acc�der aux donn�es en mode texte" href="./nojs">Cliquez ici.</a><br />
				</div>
			</div>
			<div id="containerPieParent" style="overflow: hidden; z-index:20;width:800px; height: 215px; position: absolute; left: -150px; top: -25px;">
				<div id="containerPie" style=" width: 500px; height: 400px; margin: 0 auto"></div>
			</div>
			<!-- 
			<div id="containerPiePositionParent" style="display: none; z-index: 2; overflow: hidden; position: absolute;  top: 100px; left: 180px; ">
				<div id="containerPiePosition" style="width: 140px; height: 145px; margin: 0 auto"></div>
			</div>
			 -->
			<div style="position: absolute; top: 300px; left: 50px; z-index: 0; width: 400px; margin: 0 auto">
				R�partition <br />g�ographique
			</div>
			<div id="mapContainer" style="height: 263px; overflow: hidden; position: absolute; top: 155px; left: 20px; z-index: 10; width: 400px; margin: 0 auto">
			</div>
		</div>
		<div id="rightColomn">
			<div class="topColomn">
				<h2>Analyses</h2>
			</div>
			<div class="middleColomn chartOpinions">
				<div class="border"></div>
				<div class="likeArea">
					<div id="tendance" class="tendance tooltips" title="Cliquez pour afficher par tendance" rel="Repr�sente le r�sultat pr�visionnel des �lections de 2012, avec les donn�es du web."}></div>
					<div id="buzz" class="buzz tooltips" title="Cliquez pour afficher par buzz" rel="Repr�sente de combien on parle de ce candidat."></div>
					<div id="neg" class="defavorable tooltips" title="Cliquez pour afficher par avis n�gatifs" rel="Repr�sente de combien on parle en mauvais termes de ce candidat."></div>
					<div id="pos" class="favorable tooltips" title="Cliquez pour afficher par avis positifs" rel="Repr�sente de combien on parle en bon termes de ce candidat."></div>
					<div id="none" class="neutre tooltips" title="Cliquez pour afficher par avis d�sinteress�s" rel="Repr�sente � quel point les fran�ais ne s'interessent pas � ce candidat."></div>
				</div>
				<div id="containerChartDetails" style="z-index: 400; position: absolute; top: -10px; left:40px; width: 180px; height: 190px; margin: 0 auto"></div>
			</div>
			<div class="bottomColomnLeft"></div>
			
			<div class="topColomn" style="margin-top: 30px;">
				<h2>Th�mes</h2>
			</div>
			<div class="middleColomn treemapColumn">
			<div id="noTheme">Les Th�mes ne sont disponibles qu'� partir du 22 Novembre.</div> 
			<div id="treeMap" style="z-index: 50;position: relative; top: 5px; width: 220px; height: 150px; margin: 0px auto"></div>
			</div>
			<div class="bottomColomnLeft"></div>
			
		</div>
		<div id="containerChartType">Repr�sente la tendance des candidats.</div>
		<div id="containerChart" style="position: absolute; z-index: 5; bottom:0px; left:0px;  width: 760px; height: 300px; margin: 0 auto"></div>
		<div class="cristal">
			<div style="position: absolute; bottom: 0px">
			Gagnant en 2012 :
			<div id="winner"></div>
			<span class="little">Cliquez pour le d�tail</span>
			</div>
		</div>
	</div>

</body> 
<script type="text/javascript">
TWEEN.start();
window.addEvent('domready', function() {
	var dataHandler = new DataHandler ();
	$('tendance').setStyle('opacity', 1);
	dataHandler.getData();
});
</script>
</html>