<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>	Stock</title>
</head>
<body>

<h1>Stock de Ingredientes</h1>

<table>
	
	<tr >
    <th>Ingrediente</th>
    <th>Precio</th>	
    <th>Tipo</th>
    <th>Cantidad</th>	
    			
  </tr>
	<c:forEach items="${lista}" var="ingre" varStatus="count">
           <tr>
           <td>${ingre.key.nombre}</td>
           <td>${ingre.key.precio}</td>
           <td>${ingre.key.tipo}</td>
           <td>${ingre.value}</td>
           
           </tr>
    </c:forEach>





</table>




</body>
</html>