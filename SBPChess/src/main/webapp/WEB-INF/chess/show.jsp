<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chess</title>
</head>
<body>
	<div>
		<h3>
			<a href="/">Main Menu</a>
		</h3>
		<h2>Chess Game Results</h2>
		<c:choose>
			<c:when test="${! empty chess.id }">

				<ul style="list-style: none;">
					<li>Game ID:.........${chess.id}</li>
					<li>Player:..........${chess.player}</li>
					<li>Opponent:........${chess.opponent}</li>
					<li>Player's Color:..${chess.playerColor}</li>
					<li>Outcome:.........${chess.outcome}</li>
					<li>Location:........${chess.location}</li>
				</ul>
			</c:when>
			<c:otherwise>
				<h4>No Game found by that ID</h4>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>