<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Cadastro de Produtos</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<div class="row justify-content-md-center">
			<div class="col-md-auto">
				<h1>Cadastro de Produtos</h1>
			</div>
		</div>
		<div class="row justify-content-md-center">
			<div class="col col-lg-6">				
				<form action="cadastroProduto" method="post">
					<div class="mb-3">
					  <label for="nome" class="form-label">Nome:</label>
					  <input type="text" class="form-control" id="nome" name="nome" required>
					</div>
					<div class="mb-3">
					  <label for="preco" class="form-label">Preço:</label>
					  <input type="text" class="form-control" id="preco" name="preco" required>
					</div>
					<button type="submit" class="btn btn-primary">Salvar</button>
					<a href="index.jsp" class="btn btn-secondary">Voltar</a>
				</form>
				<hr>
				<c:if test="${foiCadastrado == true}">
					<div class="alert alert-success" role="alert">
						${mensagem}
					</div>
				</c:if>		
				<c:if test="${foiCadastrado == false}">
					<div class="alert alert-danger" role="alert">
					  	${mensagem}
					</div>		
				</c:if>			
			</div>
		</div>
	</div>
</body>
</html>