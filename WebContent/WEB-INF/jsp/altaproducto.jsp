<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dar de Alta un Producto</title>
</head>
<body>

<ul id="menu">
  <li><a href="carrito">AGREGAR AL CARRITO</a></li>
  <li><a href="stock">STOCK</a></li>
  <li><a href="altaproducto">DAR DE ALTA UN PRODUCTO</a></li>
  <li><a href="agregarstock">AGREGAR STOCK</a></li>
  <li><a href="eliminarstock">ELIMINAR STOCK</a></li>
	</ul>  
	<h1>Alta Producto</h1>
	
	<form:form action="altaproducto" modelAttribute="ingrediente" role="form" method="POST" >
	
	<table>
			<tr>
				<td><form:label path="nombre">Nombre</form:label></td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td><form:label path="precio">Precio</form:label></td>
				<td><form:input path="precio" /></td>
			</tr>
			<tr>
				<td><form:label path="tipo">Tipo</form:label></td>
				<td><form:select path="tipo">
				<form:options items="Condimento" />
				<form:options items="Ingrediente" />
				</form:select></td>
			<input type="submit" id="agregar"  value="Agregar" ></input>
			</tr>	
								
	
	</table>
	</form:form>
	
</body>
</html>