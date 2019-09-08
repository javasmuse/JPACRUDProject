<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Game</title>
</head>
<body>

	<form action="addGame.do" Method="post">
		Player: <input type="text" name="player" /> <br>
		Opponent: <input type="text" name="opponent" /> <br>
		Player's Color: <input type="text" name="playerColor" /> <br>
		Outcome: <input type="text" name="outcome" /> <br>
		Location: <input type="text"name="location" /> <br>
<input type="submit" value="Add Game"/> 

	</form>

</body>
</html>