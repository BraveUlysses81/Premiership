<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Make Picks!</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>

	<header>Make Your Picks!</header>

		<nav id="mainNav" role="navigation">
			<h3>
				<ul>
					<li><a href="index.jsp" title="login">Login</a></li>
					<li><a href="standings.jsp" title="group standings">Standings</a></li>
					<li><a href="makePicks.jsp" title="pick games">Make Picks!</a></li>
					<li><a href="rules.jsp" title="competition rules">Rules</a></li>
				</ul>
			</h3>
			
			<div id="links">
			<a href="https://www.premierleague.com/tables" target="_blank">EPL Standings Table</a>
			<br> 
			<a href="https://www.premierleague.com/news" target="_blank">News, Reports, Discipline</a>
			<br>
			<a href="https://www.skybet.com/football/premier-league/event/18877650" target="_blank">Latest Odds</a>
			</div>
			
		</nav>

	<form method="post" action="PicksServlet">
		<table>
			<caption>
				<strong>Week 14</strong>
			</caption>
			<tr>
				<th class="home">Home Team</th>
				<th class="away">Away Team</th>
				<th class="conf">Points</th>
			</tr>
			<tr>
				<td><input type="radio" name="g1" value="Man City" checked>
					Man City</td>
				<td><input type="radio" name="g1" value="Chelsea">
					Chelsea</td>
				<!--</form>-->
				<td><select name="c1">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g2" value="Crystal Palace" checked>
					Crystal Palace</td>
				<td><input type="radio" name="g2" value="Southampton">
					Southampton</td>
				<td><select name="c2"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g3" value="Stoke"
					checked> Stoke</td>
				<td><input type="radio" name="g3" value="Burnley">
					Burnley</td>
				<td><select name="c3"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g4" value="Sunderland" checked>
					Sunderland</td>
				<td><input type="radio" name="g4" value="Leicester"> Leicester
				</td>
				<td><select name="c4"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g5" value="Spurs" checked>
					Spurs</td>
				<td><input type="radio" name="g5" value="Swansea"> Swansea
				</td>
				<td><select name="c5"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g6" value="West Brom" checked>
					West Brom</td>
				<td><input type="radio" name="g6" value="Watford">
					Watford</td>
				<td><select name="c6"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g7" value="West Ham" checked>
					West Ham</td>
				<td><input type="radio" name="g7" value="Arsenal">
					Arsenal</td>
				<td><select name="c7"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g8" value="Bournemouth" checked>
					Bournemouth</td>
				<td><input type="radio" name="g8" value="Liverpool"> Liverpool</td>
				<td><select name="c8"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g9" value="Everton" checked>
					Everton</td>
				<td><input type="radio" name="g9" value="Man Utd">
					Man Utd</td>
				<td><select name="c9"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="radio" name="g10" value="Middlesbrough" checked>
					Middlesbrough</td>
				<td><input type="radio" name="g10" value="Hull">
					Hull</td>
				<td><select name="c10"
					onmouseover="AdjustConfidencePointSelection(this);">
						<option value></option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select></td>
			</tr>
		</table>
		<br> <button id="submitPicks" type="submit" value="Submit Picks">Submit Picks</button>
	</form>
	<br>
	<script src="makePicks.js" type="text/javascript"></script>
</body>

</html>