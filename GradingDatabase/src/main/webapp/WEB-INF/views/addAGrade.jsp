<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Grade Form</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<h1>Add a Grade</h1>
	
	<form action="/addGradeConfirmation" method="POST">
		Name <input type="text" name="name"/><br>
		Type 
		<select name="type">
			<option disabled selected>- Select One -</option>
			<option value="Assignment">Assignment</option>
			<option value="Quiz">Quiz</option>
			<option value="Exam">Exam</option>
		</select><br>
		Score <input type="number" step="any" name="score"><br>
		Total <input type="number" step="any" name="total"><br>
		<input type="submit"/>
	</form>
	
	<a href="/">Cancel</a>
</body>
</html>