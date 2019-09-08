<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Games</title>
</head>
<body>
	<h3>
		<a href="/">Back to the Home Page</a>
	</h3>

	 <form action="getChess.do" method="GET">
		Chess Game ID: <input type="text" name="cid" /> <input type="submit"
			value="Show Game" />
	</form>
	
	
	
	

	
</body>
</html>