<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirm Delete</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<h1>Are you sure you want to delete this grade?</h1>
	<h2>Details</h2>
	<h3>Name: ${grade.name}</h3>
	<h3>Type: ${grade.type}</h3>
	<h3>Score: ${grade.score}</h3>
	<h3>Total: ${grade.total}</h3>
	<a href="/deleteGrade?id=${grade.id}">Delete</a> <a href="/">Cancel</a>
</body>
</html>