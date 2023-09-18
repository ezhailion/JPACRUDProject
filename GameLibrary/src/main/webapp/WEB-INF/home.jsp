<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game Library</title>
</head>
<body>
<h1>JPA Game Library</h1>
${gameList }

<div class="container">
		<form action="getGame.do" method="GET">
			<div class="row">
				<div class="col-sm-8">
					Game ID: <input class="form-control" type="text" name="id" />
				</div>
				<input class="col btn btn-primary" type="submit" value="Show Game" />
			</div>
		</form>
							<form action="getGame.do?id=${game.id}" method="GET">
	        					<button  type="submit"class="btn btn-outline-success"> ${game.title}</button>
	        					<input type="hidden" name="id" value="${game.id}" />
	    					</form>
							<form action="editGame.do" method="GET">
	        					<button  type="submit" class="btn btn-outline-success">Edit Game</button>
	        					<input type="hidden" name="id" value="${game.id}" />
	    					</form>
	    					<form action="deleteGame.do" method="POST">
  								<input type="hidden" name="id" value="${game.id}"/>
  								<input class='btn btn-danger' type="submit" value="Delete Game"/>
  							</form>	
	</div>
</body>
</html>