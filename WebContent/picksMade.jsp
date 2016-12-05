<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Selected Picks</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

	<header>Your Week's Slate</header>

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
		<caption>Week 3</caption>
		<tr>
			<th class="pick">Your Picks</th>
			<th class="wager">Points</th>
		</tr>
		<tr>
			<td>${p1}</td>

			<td>${c1}</td>
		</tr>
		<tr>
			<td>${p2}</td>

			<td>${c2}</td>
		</tr>
		<tr>
			<td>${p3}</td>

			<td>${c3}</td>
		</tr>
		<tr>
			<td>${p4}</td>

			<td>${c4}</td>
		</tr>
		<tr>
			<td>${p5}</td>

			<td>${c5}</td>
		</tr>
		<tr>
			<td>${p6}</td>

			<td>${c6}</td>
		</tr>
		<tr>
			<td>${p7}</td>

			<td>${c7}</td>
		</tr>
		<tr>
			<td>${p8}</td>

			<td>${c8}</td>
		</tr>
		<tr>
			<td>${p9}</td>

			<td>${c9}</td>
		</tr>
		<tr>
			<td>${p10}</td>

			<td>${c10}</td>
		</tr>
	</table>
	<br>
</body>
</html>