<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search by Location</title>
</head>
<body>
	<h3>
		<a href="/">Back to the Home Page</a>
	</h3>

<ul>
		<c:forEach items="${chess }" var="chessdb">
			<li><a href="getChess.do?cid=${chessdb.id}">${chessdb.player}</li>
		</c:forEach>
	</ul>






</body>
</html>