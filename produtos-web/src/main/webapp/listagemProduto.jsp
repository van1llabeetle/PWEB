<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title>Listagem de Produtos</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<div class="row justify-content-md-center">
			<div class="col-md-auto">
				<h1>Listagem de Produtos</h1>
			</div>
		</div>
		<div class="row justify-content-md-center">
			<div class="col col-lg-6">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Nome</th>
							<th>Preço</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listaDeProduto}" var="produto">
							<tr>
								<td>${produto.nome}</td>
								<td>${produto.preco}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="index.jsp" class="btn btn-secondary">Voltar</a>
			</div>			
		</div>
	</div>	
</body>
</html>




