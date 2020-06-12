<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	<title>Faça seu login</title>
	
	<c:set value="${pageContext.request.contextPath}" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/login.css" />
</head>
<body>
	<header class="bl-topo">
		<figure class="bl-topo-figure">
			<a href="${contextPath}/"><img class="bl-topo-figure-img" src="${contextPath}/imagens/logo.png" alt="Logo Bruno" title="Logo Bruno" /></a>
		</figure>
	</header>

	<section class="bl-corpo">
		<div class="container">
			<article class="bl-corpo-formulario">
				<header>
					<h1>Insira seus dados para começarmos então!</h1>
				</header>
				<form name="formLogin" action="${contextPath}/painelAdmin" method="POST">
					<label>e-mail</label> 
					<input type="email" name="email" value="" placeholder="Digite o seu email" /> 
					
					<label>senha</label> 
					<input type="password" name="senha" value="" placeholder="Digite a sua senha" />

					<button><input type="submit" name="logar" value="Iniciar" /></button>
				</form>
				<a href="${contextPath}/"><button>Cancelar</button></a>
			</article>
		</div>
	</section>
</body>
</html>