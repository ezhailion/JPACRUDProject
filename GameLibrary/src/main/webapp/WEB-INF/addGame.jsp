<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateOrDeleteGame</title>
</head>
<body>
	<div class='col-3 offset-2'>
	<h1>Add A Game</h1>
	</div>
	<form action="createGame.do" method="POST">
		<div class='row 3'>
			<div class='col-5 offset-1'>								
				<span class='input-group-text'>Title:</span>
					<input class='form-control' type="text" name="title"/>										
			</div>
			<div class='col-5'>
				<span class='input-group-text'>Image URL: </span>
					<input class='form-control' name='urlImg' type='text'/>
			</div>									
		</div>					
	</form>
</body>
</html>