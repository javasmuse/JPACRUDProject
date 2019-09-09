<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
	<div>
		<h3>
			<a href="/">Main Menu</a>
		</h3>
		<h2>Chess Game to be Deleted</h2>
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


				<form action="deleteChess2.do" method="GET">

					<h4>Are you sure you want to delete this game?</h4>
					
					<input type="submit" value="Delete" />				
					<input type="hidden" name="cid" value="${chess.id }"/> 	
				</form>
			</c:when>
			<c:otherwise>
				<h4>No Game found by that ID - go back the Main Menu and try
					again</h4>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>