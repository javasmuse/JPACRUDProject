<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chess</title>
</head>
<body>
	<div>
		<h2>Chess Game Results</h2>
		<ul>
			<li>${chess.id}</li>
			<li>${chess.player}</li>
			<li>${chess.opponent}</li>
			<li>${chess.playerColor}</li>
			<li>${chess.location}</li>
			<li>${chess.outcome}</li>
		</ul>
	</div>
</body>
</html>