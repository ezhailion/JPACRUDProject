<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Confirmation</title>
</head>
<body>
<div class="container-fluid">
	<c:choose>
		<c:when test="${not empty game}">
			<h1>Game Details</h1>
			<div>
				<h4>${game.title}</h4>
				<c:if test="${! empty game}">
				<form action="editGame.do" method="GET">
	        		<button type="submit">Edit Game</button>
	        		<input type="hidden" name="id" value="${game.id}" />
	    		</form>
	    	<form action = "deleteGame.do" method = "POST">
  				<input type = "hidden" name = "id" value="${game.id}"/>
  				<input type = "submit" value = "Delete Game"/>
  			</form>
				</c:if>
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>This entry has been deleted.</h3>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>