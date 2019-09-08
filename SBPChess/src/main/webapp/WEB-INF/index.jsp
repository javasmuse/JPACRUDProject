<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chess Game Tracker</title>
</head>
<body>
	<!-- <form action="getChess.do" method="GET">
		
		Chess Game ID <input type="number" name="cid" /> <input type="submit"
			value="Show Chess" />
	</form>
	<br>
	<br>
 -->
	<!-- <form action="deleteChess.do" method="GET">
	Chess Game ID <input type="text" name="cid" /> <input type="submit"
			value="delete game" />
</form> -->


	<%-- <ul>
		<c:forEach items="${chess }" var="chessdb">
			<li><a href="getChess.do?cid=${chessdb.id}">${chessdb.player}<br>${chessdb.location}</a></li>
		</c:forEach>
	</ul>
	 --%>

	<h2>Welcome to the Chess Game Tracker</h2>
	<h4>Please choose from the list below - to view game records,
		update records, add a new game, or delete a game.</h4>
	<br>
	<br>
	<h3>C</h3>
	<form action="addChessGame.do" method="GET">
		<a href="addChessGame.do">Create a Chess Game / Add a Game</a>
	</form>
	<h3>R</h3>
	<a href="searchGames.do">Read a Chess Game / Search for a Game</a>
	<h3>U</h3>
	<a href="updateGame.do">Update a Chess Game</a>
	<h3>D</h3>
	<a href="delete.do">Delete a Chess Game</a>

	<br>
	<br>
	<ul style="list-style: none;">
		<c:forEach items="${chess }" var="chess">

			<li><a href="getChess.do?cid=${chess.id}"> Game ID:....
					${chess.id}....Player.... ${chess.player}....Opponent....
					${chess.opponent}....Outcome.... ${chess.outcome}</a></li>
		</c:forEach>
	</ul>

</body>
</html>