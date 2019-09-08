<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search by ID</title>
</head>
<body>
	<h3>
		<a href="/">Back to the Home Page</a>
	</h3>
	
	
	<form action="getFilm.do" method="GET">
		Film ID: <input type="text" name="fid" /> <input type="submit"
			value="Show Film" />
	</form>
	
Chess Game ID <input type="number" name="cid" /> <input type="submit" value="Show Game" />
			
			
			
			




</body>
</html>