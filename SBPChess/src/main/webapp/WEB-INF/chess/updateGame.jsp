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
	Chess Game ID
	<form action="updateGameP1.do" method="GET">
		Game ID: <input type="text" name="cid" /> <input type="submit"
			value="Show Game" />
	</form>
	<a href="updateGameP1.do?cid=${chessdb.id}">${chessdb.player}</a>
</body>
</html>