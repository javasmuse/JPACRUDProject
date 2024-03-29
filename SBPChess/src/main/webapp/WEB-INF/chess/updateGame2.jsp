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
		<a href="/">Main Menu</a>
	</h3>
	<c:choose>
		<c:when test="${! empty chess.id }">

			<h2>This is the game you have selected to update.</h2>

			<ul>
				<li>Game ID: ${chess.id}</li>
				<li>Player: ${chess.player}</li>
				<li>Opponent: ${chess.opponent}</li>
				<li>Player Color: ${chess.playerColor}</li>
				<li>Outcome: ${chess.outcome}</li>
				<li>Location: ${chess.location}</li>
			</ul>

			<div>
				<h2>Update Here</h2>
				<ul>

					<form action="updateGameP2.do" method="POST">
						<input type="hidden" name="cid" value="${chess.id }">
						<br> <input type="text" name="player" value="${chess.player}">
						<input type="text" name="opponent" value="${chess.opponent}">
						<input type="text" name="playerColor" value="${chess.playerColor}">
						<input type="text" name="outcome" value="${chess.outcome}">
						<input type="text" name="location" value="${chess.location}">
							<input type="submit" value="Submit" />
					</form>
		</c:when>
		<c:otherwise>
			<h4>No Game found by that ID</h4>
			<h4>Please return to the main menu and try again.</h4>
		</c:otherwise>
	</c:choose>
</body>
</html>