<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Game</title>
</head>
<body>
	<h3>
		<a href="/">Back to the Home Page</a>
	</h3>
	<h2>This is the game you have selected to update.</h2>
	<ul>
		<li>Game ID: ${chess.id}</li>
		<li>Player: ${chess.player}</li>
		<li>Opponent: ${chess.opponent}</li>
		<li>Player Color: ${chess.playerColor}</li>
		<li>Location: ${chess.location}</li>
		<li>Outcome: ${chess.outcome}</li>
	</ul>
	<div>
		<h2>Update Here</h2>
		<ul>

			<form action="updateGameP2.do" method="POST">
				<br> <input type="text" name="player" value="${chess.player}">
				<input type="text" name="opponent" value="${chess.opponent}">
				<input type="text" name="playerColor" value="${chess.playerColor}">
				<input type="text" name="outcome" value="${chess.location}">
				<input type="text" name="location" value="${chess.outcome}">
				<br>
		Verify Game ID (not changeable): 
		<input type="text" name="cid" /> <input type="submit"
			value="Submit" />
			</form>
			
			
</body>
</html>