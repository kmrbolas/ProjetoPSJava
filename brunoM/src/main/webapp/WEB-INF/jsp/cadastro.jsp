<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	
	<title>Faça seu cadastro</title>
	
	<c:set value="${pageContext.request.contextPath }" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/cadastro.css" />
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
					<h1>Não se preocupe! Vamos criar uma conta bem rápido para você poder começar :)</h1>
				</header>
				<form name="formCadastro" action="${contextPath}/novoAdmin" method="POST">
					
					<label>Qual o seu nome?</label>
					<input type="text" name="nome" value="" placeholder="Digite o seu nome" />
					
					<label>Qual o seu e-mail?</label>
					<input type="email" name="email" value="" placeholder="Digite o seu email" />
					
					<label>Defina uma senha...</label>
					<input type="password" name="senha" value="" placeholder="Digite uma senha" />
					
					<input type="hidden" name="tipo" value="1" />
					
					<button><input type="submit" name="cadastrar" value="Iniciar" /></button>
				</form>
			</article>
		</div>	
	</section>
</body>
</html>