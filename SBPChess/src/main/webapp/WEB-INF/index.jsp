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
	Chess Game ID <input type="text" name="cid" /> <input type="submit"
			value="Show Chess" />
	</form>
	<ul>
		<c:forEach items="${chess }" var="chess">
			<li><a href="getChess.do?cid=${chess.id}">${chess.player}</a></li>
		</c:forEach>
	</ul>
</body>
</html>