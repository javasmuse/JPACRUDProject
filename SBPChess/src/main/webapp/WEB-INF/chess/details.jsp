<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>

	<h3>
		<a href="/">Main Menu</a>
	</h3>
	<h2>Your Game</h2>
	<c:choose>
		<c:when test="${! empty chess.id}">
			<h2>Game Number:</h2> ${chess.id}
			<ul>
				<li>Player: ${chess.player}</li>
				<li>Opponent: ${chess.opponent}</li>
				<li>Player's Color: ${chess.playerColor}</li>
				<li>Outcome: ${chess.outcome}</li>
				<li>Location: ${chess.location}</li>
			</ul>
		</c:when>
		<c:otherwise>
			<h3>Not Added or Updated, an Error Occurred</h3>
		</c:otherwise>
	</c:choose>

</body>
</html>