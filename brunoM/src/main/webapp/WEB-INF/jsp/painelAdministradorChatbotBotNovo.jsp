<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	
	<title>Novo Bot</title>
	
	<c:set value="${pageContext.request.contextPath }" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/painelUsuarioChatbotBotNovo.css" />
</head>
<body>
	<header class="bl-topo">
		<figure class="bl-topo-figure">
			<a href="${contextPath}/painelAdmin"><img class="bl-topo-figure-img" src="${contextPath}/imagens/logo.png" alt="Logo Bruno" title="Logo Bruno" /></a>
		</figure>
		
		<figure class="bl-topo-figure-right">
			<a href="${contextPath}/"><img class="bl-topo-figure-img" src="${contextPath}/imagens/iconOff.png" alt="Logo Bruno" title="Logo Bruno" /></a>
		</figure>
	</header>
	
	<section class="bl-corpo-menuLateral">
		<ul class="bl-menuLateral-ul">
			<a href="${contextPath}/painelAdmin/perfil"><button><li><i class="fas fa-user-circle"></i> Perfil</li></button></a>
			<a href="${contextPath}/painelAdmin/chatbot"><button><li><i class="fas fa-book-medical"></i> Chatbot</li></button></a>
		</ul>
	</section>
	
	<main class="bl-corpo">
		<div class="container">
			<article>
				<header>
					<h1>Novo Bot</h1>
					<hr>
				</header>
				
				<form class="bl-corpo-formulario" name="" action="${contextPath}/painelAdmin/botNovo" method="POST">
					<label>Escolha um nome para o bot:</label>
					<input type="text" name="nome" value="" />
						
					<label>Configure uma mensagem de boas vindas:</label>
					<textarea name="msn-boasvindas"></textarea>
					
					<label>Configure uma mensagem de despedida:</label>
					<textarea name="msn-despedida"></textarea>
					
					<label>Configure uma mensagem padrão para fluxos não encontrados:</label>
					<textarea name="msn-default"></textarea>
						
					<label>Defina um tempo de inatividade para utilizar a mensagem de despedida</label>
					<input type="text" name="tempo-inativo" value="" />
					
					<button type="submit" class="btn-cria">Criar novo bot</button>
				</form>
			</article>
		</div>
	</main>
	
	<div class="gamb"></div>
</body>
</html>