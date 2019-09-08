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
	<form action="getChess.do" method="GET">
		
		Chess Game ID <input type="number" name="cid" /> <input type="submit"
			value="Show Chess" />
	</form>
	<br>
	<br>

	<!-- <form action="deleteChess.do" method="GET">
	Chess Game ID <input type="text" name="cid" /> <input type="submit"
			value="delete game" />
</form> -->


	<ul>
		<c:forEach items="${chess }" var="chessdb">
			<li><a href="getChess.do?cid=${chessdb.id}">${chessdb.player}<br>${chessdb.location}</a></li>
		</c:forEach>
	</ul>
	
	<br> <br>
	
	<form action="addChessGame.do" method="GET"> 
	<a href="addChessGame.do">Create a Chess Game / Add a Game</a> 
	</form>
	
	<a href="addChessGame.do">Read a Chess Game / Search for a Game</a> 
	<a href="addChessGame.do">Update a Chess Game</a> 
	<a href="addChessGame.do">Delete a Chess Game</a> 

	
	
</body>
</html>