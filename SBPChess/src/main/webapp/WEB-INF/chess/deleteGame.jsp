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
<h3>
<a href="/">Back to the Home Page</a>
</h3>

<form action="deleteChess.do" method="GET">

<h4> To Delete a Game</h4>
Enter the Game ID: <input type="number" name="cid" /> <input type="submit"
			value="Delete" />
	</form>


</body>
</html>