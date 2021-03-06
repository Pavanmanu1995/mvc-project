<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<style>
body {
  
	text-align: center;
    max-width: 400px;
    border-radius:10px;
    margin: auto;
    background-color: #e580ff;
    box-sizing: border-box;
    padding: 40px;
    color: #fff;
    margin-top: 50px;
}
</style>
</head>
<body>
<div>
<form action="/delete" method="post">
	<div class="select">
		<select name="libraryId" class="selectpicker" data-style="btn-primary">

			<option>--Select Library--</option>

			<c:forEach var="libist" items="${libist}">

				<option value="${libist.libraryId}">${libist.libraryName}</option>

			</c:forEach>

		</select>
		</div>
		<button type="submit">Delete</button>

	</form>
</div>

</body>
</html>