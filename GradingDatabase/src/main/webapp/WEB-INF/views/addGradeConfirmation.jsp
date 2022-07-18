<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Grade Confirmation</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<h1>Grade Added</h1>
	<p>The grade was added to the database.</p>
	<h2>Details</h2>
	<h3>Name: ${name}</h3>
	<h3>Type: ${type}</h3>
	<h3>Score: ${score}</h3>
	<h3>Total: ${total}</h3>
	
	
	<a href="/">Return to grade list</a>
</body>
</html>