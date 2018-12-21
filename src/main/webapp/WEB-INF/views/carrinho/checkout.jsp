<%@page import="server.models.Produto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Produtos</title>
<link href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"
        rel="stylesheet">
</head>
<body>
<%@include file="../includes/menu.jsp" %>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Ação</th>
      <th scope="col">Nome</th>
      <th scope="col">Descrição</th>
      <th scope="col">Preço</th>
    </tr>
  </thead>
  <tbody>

	<c:forEach items="${ produtos }" var="produto" varStatus="status">  
	    <tr id="linha_${ status.index }">
	      <td><button onclick="removerItem(${ produto.id }, ${ status.index })"
	      	type="button" class="btn btn-danger">X</button>
	      </td>
	      <td>${ produto.nome }</td>
	      <td>${ produto.descricao }</td>
	      <td>${ produto.preco }</td>
	    </tr>
  	</c:forEach>
  </tbody>
</table>
<div class="container">
	<form action="/pedido/criar" method="POST">
	  <div class="form-row">
	    <div class="form-group col-md-8">
	      <label for="inputEmail4">Nome</label>
	      <input type="text" class="form-control" id="inputEmail4" placeholder="Nome" name="nome">
	    </div>
	    <div class="form-group col-md-4">
	      <label for="inputDataNasc">Data de nasc.</label>
	      <input type="date" class="form-control" id="inputDataNasc" name="dataNascimento">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputAddress">Endereço</label>
	    <input type="text" class="form-control" id="inputAddress" placeholder="Rua XV de Novembro, 100" name="endereco">
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-6">
	      <label for="inputCity">Cidade</label>
    	  <select id="inputCity" class="form-control" name="cidade">
	        <option selected>Blumenau</option>
	        <option>Indaial</option>
	        <option>Gaspar</option>
	      </select>
	    </div>
	    <div class="form-group col-md-4">
	      <label for="inputState">Estado</label>
	      <select id="inputState" class="form-control" name="estado">
	        <option selected>Santa Catarina</option>
	      </select>
	    </div>
	    <div class="form-group col-md-2">
	      <label for="inputZip">CEP</label>
	      <input type="number" class="form-control" id="inputZip" name="cep">
	    </div>
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-6">
	      <label for="inputPayment">Método de pagamento</label>
    	  <select id="inputPayment" class="form-control" name="metodoPagamento">
	        <option value="CARTAO_CREDITO" selected>Cartão MasterCard</option>
	        <option value="DINHEIRO">Dinheiro</option>
	        <option value="VALE_REFEICAO">Vale Refeição</option>
	      </select>
	    </div>
	  </div>
	  <button type="submit" class="btn btn-primary">Confirmar compra</button>
	</form>

</div>

<script>

	function removerItem(idProduto, index) {
		$.post('/carrinho/remove', {'idProduto': idProduto}, function() {
			$('#linha_' + index).hide();
		});
	}

</script>

<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>