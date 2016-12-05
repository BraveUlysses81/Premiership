<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Run The Week</title>
<link rel="stylesheet" type="text/css" href="styles.css">

</head>

<body>

	<header>Enter This Week's Results</header>

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
	<form action="RunWeekServlet" method="post">
		<table>
			<caption>
				<label for="wkno"><strong>Week: </strong></label>
				<input type="text" id="wkno" name="wkno"/>
			</caption>
			<tr>
				<th>Game</th>
				<th>Winner</th>
			</tr>
			<tr>
				<td>1</td>
				<td><select name="w1">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>2</td>
				<td><select name="w2">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>3</td>
				<td><select name="w3">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>4</td>
				<td><select name="w4">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>5</td>
				<td><select name="w5">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>6</td>
				<td><select name="w6">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>7</td>
				<td><select name="w7">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>8</td>
				<td><select name="w8">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>9</td>
				<td><select name="w9">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
			<tr>
				<td>10</td>
				<td><select name="w10">
						<option value=""></option>
						<option value="Arsenal">Arsenal</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Hull">Hull</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Man City">Man City</option>
						<option value="Man Utd">Man Utd</option>
						<option value="Middlesbrough">Middlesbrough</option>
						<option value="Southampton">Southampton</option>
						<option value="Stoke">Stoke</option>
						<option value="Sunderland">Sunderland</option>
						<option value="Spurs">Spurs</option>
						<option value="Swansea">Swansea</option>
						<option value="Watford">Watford</option>
						<option value="West Brom">West Brom</option>
						<option value="West Ham">West Ham</option>
				</select></td>
			</tr>
		</table>
		<br>
		<button id="submitPicks" type="submit" value="Run the Week">Run The Week</button>
	</form>
</body>
</html>