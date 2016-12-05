<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Standings</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

	<header>Check The Standings</header>

	<nav id="mainNav" role="navigation">
		<h3>
		<ul>
			<li><a href="index.jsp" title="login">Login</a></li>
			<li><a href="standings.jsp" title="group standings">Standings</a></li>
			<li><a href="makePicks.jsp" title="pick games">Make Picks!</a></li>
			<li><a href="rules.jsp" title="competition rules">Rules</a></li>
		</ul>
		</h3>
	</nav>
	
	<table>
	<caption>My Team</caption>
	<tr>
	<th class="stands">${person.username}</th>
	<th class="stands">${person.winNum}</th>
	<th class="stands">${person.lossNum}</th>
	<th class="stands">${person.totPoint}</th>
	</tr>
	</table>
	
	<table>
		<caption>League Standings</caption>
		<tr>
			<th class="stands">
			<form action="SortNamesServlet" method="get">
			<button type="submit" value="Team">Team</button>
			</form>
			</th>
			<th class="stands">
			<form action="SortWinsServlet" method="get">
			<button type="submit" value="Wins">Wins</button>
			</form>
			</th>
			<th class="stands">
			<form action="SortLossServlet" method="get">
			<button type="submit" value="Losses">Losses</button>
			</form>
			</th>
			<th class="stands">
			<form action="SortPointsServlet" method="get">
			<button type="submit" value="Points">Points</button>
			</form>
			</th>
		</tr>
		<tr>
			<td>${tm1}</td>
			<td>${win1}</td>
			<td>${loss1}</td>
			<td>${pts1}</td>
		</tr>
		<tr>
			<td>${tm2}</td>
			<td>${win2}</td>
			<td>${loss2}</td>
			<td>${pts2}</td>
		</tr>
		<tr>
			<td>${tm3}</td>
			<td>${win3}</td>
			<td>${loss3}</td>
			<td>${pts3}</td>
		</tr>
		<tr>
			<td>${tm4}</td>
			<td>${win4}</td>
			<td>${loss4}</td>
			<td>${pts4}</td>
		</tr>
		<tr>
			<td>${tm5}</td>
			<td>${win5}</td>
			<td>${loss5}</td>
			<td>${pts5}</td>
		</tr>
		<tr>
			<td>${tm6}</td>
			<td>${win6}</td>
			<td>${loss6}</td>
			<td>${pts6}</td>
		</tr>
		<tr>
			<td>${tm7}</td>
			<td>${win7}</td>
			<td>${loss7}</td>
			<td>${pts7}</td>
		</tr>
		<tr>
			<td>${tm8}</td>
			<td>${win8}</td>
			<td>${loss8}</td>
			<td>${pts8}</td>
		</tr>
		<tr>
			<td>${tm9}</td>
			<td>${win9}</td>
			<td>${loss9}</td>
			<td>${pts9}</td>
		</tr>
		<tr>
			<td>${tm10}</td>
			<td>${win10}</td>
			<td>${loss10}</td>
			<td>${pts10}</td>
		</tr>
		<tr>
			<td>${tm11}</td>
			<td>${win11}</td>
			<td>${loss11}</td>
			<td>${pts11}</td>
		</tr>
		<tr>
			<td>${tm12}</td>
			<td>${win12}</td>
			<td>${loss12}</td>
			<td>${pts12}</td>
		</tr>
		<tr>
			<td>${tm13}</td>
			<td>${win13}</td>
			<td>${loss13}</td>
			<td>${pts13}</td>
		</tr>
		<tr>
			<td>${tm14}</td>
			<td>${win14}</td>
			<td>${loss14}</td>
			<td>${pts14}</td>
		</tr>
		<tr>
			<td>${tm15}</td>
			<td>${win15}</td>
			<td>${loss5}</td>
			<td>${pts15}</td>
		</tr>
		<tr>
			<td>${tm16}</td>
			<td>${win16}</td>
			<td>${loss16}</td>
			<td>${pts16}</td>
		</tr>
		<tr>
			<td>${tm17}</td>
			<td>${win17}</td>
			<td>${loss17}</td>
			<td>${pts17}</td>
		</tr>
		<tr>
			<td>${tm18}</td>
			<td>${win18}</td>
			<td>${loss18}</td>
			<td>${pts18}</td>
		</tr>
	</table>
</body>
</html>