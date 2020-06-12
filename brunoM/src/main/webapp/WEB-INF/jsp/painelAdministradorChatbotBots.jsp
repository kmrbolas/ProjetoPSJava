<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	
	<title>Bots</title>
	
	<c:set value="${pageContext.request.contextPath }" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/painelUsuarioChatbotBots.css" />
</head>
<body>
	<header class="bl-topo">
		<figure class="bl-topo-figure">
			<a href="${contextPath}/painelAdmin/"><img class="bl-topo-figure-img" src="${contextPath}/imagens/logo.png" alt="Logo Bruno" title="Logo Bruno" /></a>
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
					<h1><i class="fas fa-robot"></i> Bots</h1>
					<hr>
				</header>
				
				<a href="${contextPath}/painelAdmin/botNovo"><button class="btn-novo">Criar um novo bot</button></a>
				
				<div class="bl-corpo-lista">
					<ul>
						<div class="bl-corpo-lista-linha">
							<a href="${contextPath}/painelAdmin/botEditar"><button class="btn"><li><i class="fas fa-robot"></i> Bruno</li></button></a>
							<button class="btn delete"><li>Excluir</li></button>
						
						</div>
						<div class="bl-corpo-lista-linha">
							<button class="btn"><li>Watson</li></button>
							<button class="btn delete"><li>Excluir</li></button>
							
						</div>
						<div class="bl-corpo-lista-linha">
							<button class="btn"><li>Bia</li></button>
							<button class="btn delete"><li>Excluir</li></button>
				
						</div>
					</ul>
				</div>
			</article>
		</div>
	</main>
	
	<div class="gamb"></div>
</body>
</html>