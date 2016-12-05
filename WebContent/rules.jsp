<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rules</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

	<header role="banner">Welcome ${person.username}, These Are
		The Rules</header>

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

	<article id="content" role="main">
		<p id="welcome">
			Being the first year of this friendly competition, the league will be
			less than perfect.<br> If situations arise that are not included
			in the following rules, the league will determine the appropriate
			course of action.<br> That being said, please make note of any
			and all possible pitfalls that you may see. If there are potential
			problems, I'd like to address them sooner than later.<br> <br>
			<i>-Wilbur</i>
		</p>

		<ol>
			<li>Each week every entry MUST pick a winner for all 10 matches
				and rate them 1 to 10 based on confidence (10 being most confident).
				A week is defined as the set of matches on the original schedule.
				Sometimes matches get moved due to scheduling conflicts. The
				original slate of 10 games is that "Week." If you fail to make picks
				by the beginning of the week, picks and confidence weights will be
				assigned to you. <strong>Failure to make picks will cost
					you ten points!</strong>
			</li>
			<li>Points are <b>awarded for a correct pick</b> according to
				confidence value and <b>subtracted for an incorrect pick</b>. Draws
				are 0, neither awarded not subtracted any value. Negative scoring
				weeks are allowed.
			</li>
			<li>The weekly high-scorer gets an extra 10 points and the
				weekly low-scorer loses an extra 10 points. If anyone fails to make
				picks, no-one who attempted picks will lose additional points. Only
				the slouches!</li>
			<li>Anyone with a <b>"clean sheet"</b> for a week (no losses, only wins
				and draws) gets a bonus of the number of wins times a multiplier of
				10.</li>
			<li>Every entry <strong>must pick each team to win at
				least 3 times</strong> over the course of the half-season.
			</li>
		</ol>
	</article>
</body>
</html>