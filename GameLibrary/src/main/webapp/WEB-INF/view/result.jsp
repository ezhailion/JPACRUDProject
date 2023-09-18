<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>
<div class="container-fluid col-8 offset-3">
	<c:choose>
		<c:when test="${not empty game}">
			<h1>Game Details</h1>
			<div class="row">
						<h4 class="col-4">${game.title}: </h4>
				<div style="text-align:center" class="col-6">
						<div class="row">
						
					 </div>
					
					<c:if test="${! empty game}">
						<div class='container'>
							<div class='row'>
								<div class='col-4 offset-3'>
									<form action="editGame.do" method="GET">
				        				<button type="submit" class='btn btn-success'>Edit Details</button>
				        				<input type="hidden" name="id" value="${game.id}" />
				    				</form>
			    				</div>
								<div class='col-4'>
									<form action="deleteGame.do" method="POST">
  										<input type="hidden" name="id" value="${game.id}"/>
  										<input class='btn btn-danger' type="submit" value="Delete Game"/>
  									</form>
  								</div>
							</div>					 						
  						</div>		
					</c:if>
				</div>
				<div class="col-12">	
					<img alt="#" src="${game.urlImg}">				
				</div>
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>Game not found.</h3>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>