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
<body>
	<h1>Update Game</h1>
	<div class='container-fuild'>
		<form action="updateGame.do"  method="POST">
				<input type='hidden' value='${game.id}' name='id'/>
		<div class='row 3'>
			<div class='col-5 offset-1'>								
				<span class='input-group-text'>Title:</span>
					<input class='form-control' value='${game.title}' type="text" name="title"/>										
			</div>
			<div class='col-5'>
				<span class='input-group-text'>Image URL: </span>
					<input class='form-control' name='urlImg' type='text' value='${game.urlImg}'/>
			</div>					
		</div>			
		</form>
		<div class='col-4 offset-1'>	
			<form action = "deleteGame.do" method = "POST">
		  		<input type = "hidden" name = "id" value="${game.id}"/>
		  		<input class='btn btn-danger' type = "submit" value = "Delete Game"/>
		  	</form>
	  	</div>
	</div>	
		
	
</body>
</html>