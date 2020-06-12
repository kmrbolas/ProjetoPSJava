<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	
	<title>Seu perfil :)</title>
	
	<c:set value="${pageContext.request.contextPath }" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/painelUsuarioPerfil.css" />
</head>
<body>

	<jsp:include page="painelAdminEstrutura.jsp"/>
	
	<main class="bl-corpo">
		<div class="container">
			<article>
				<header>
					<h1>Seu perfil:</h1>
					<hr>
				</header>
				
				<form:form class="bl-corpo-formulario" action="${contextPath}/deleteAdmin/${administradorModel.id}" method="delete">
				
					<label>Nome:</label>
					<input type="text" name="nome" value="${administradorModel.nome}" disabled/>
					
					<label>E-mail:</label>
					<input type="text" name="email" value="${administradorModel.email}" disabled/>
					
					<label>Senha:</label>
					<input type="text" name="senha" value="${administradorModel.senha}" disabled/>
					
					<button type="submit" class="btn-delete">Deletar seu perfil</button>
					<a href="${contextPath}/painelAdmin/formPerfilUpdate?page=painelAdministradorPerfilEditar&id=${administradorModel.id}"><button class="btn-edita">Editar seu perfil</button></a>
			
				</form:form>
			</article>
		</div>
	</main>
	
	<div class="gamb"></div>
</body>
</html>