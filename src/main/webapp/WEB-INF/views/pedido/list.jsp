<%@page import="server.models.Produto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Pedidos</title>
<link href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"
        rel="stylesheet">
</head>
<body>
<%@include file="../includes/menu.jsp" %>



<c:forEach items="${ pedidosCozinha }" var="pedido">
	<div class="container">
		<div class="card">
		  <h5 class="card-header">${ pedido.nome }</h5>
		  <div class="card-body">
		 		<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">Nome</th>
			      <th scope="col">Descrição</th>
			    </tr>
			  </thead>
			  <tbody>
			
				<c:forEach items="${ pedido.produtos }" var="produto">  
				    <tr>
				      <td>${ produto.nome }</td>
				      <td>${ produto.descricao }</td>
				    </tr>
			  	</c:forEach>
			  </tbody>
			</table>
		    <button onclick="alterarStatus(${ pedido.id }, 'ENTREGA')" class="btn btn-primary">Enviar para Entrega</button>
		  </div>
		</div>
	</div>

</c:forEach>


<c:forEach items="${ pedidosEntrega }" var="pedido">
	<div class="container">
		<div class="card">
		  <h5 class="card-header">${ pedido.nome }</h5>
		  <div class="card-body">
		 		<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">Endereço</th>
			      <th scope="col">Cidade</th>
			      <th scope="col">CEP</th>
			      <th scope="col">Método de Pagamento</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>${ pedido.endereco }</td>
			      <td>${ pedido.cidade }</td>
			      <td>${ pedido.cep }</td>
			      <td>${ pedido.metodoPagamento }</td>
			    </tr>
			  </tbody>
			</table>
		    <button onclick="alterarStatus(${ pedido.id }, 'FINALIZADO')" class="btn btn-primary">Pedido Entregue</button>

		  </div>
		</div>
	</div>

</c:forEach>

<script>

	function alterarStatus(idPedido, status) {
		$.post('/pedido/status', {'idPedido': idPedido, 'status': status}, function() {
			location.reload();
		});
	}

</script>


<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>