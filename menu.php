<? include "header.php"; ?>
<? session_start(); ?>
<?
	include "conexao.php";
    $date = date("d/m/y");
    $hora= gmdate("H:i" ,time()-(3570*2));
?>
<div class="container-fluid">
	<div class="row-fluid">
<div class="span2 ">
<!-- Desenvolvedor -->			
 <? if ($_SESSION["tipousuario"] == '1') { ?>				
<div class="accordion" id="accordion2">
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1">
        Usuários
      </a>
    </div>
    <div id="collapse1" class="accordion-body collapse">
      <div class="accordion-inner">
            
			<a target="principal" href="listagemusuarios.php"> 
			<img src="imagens/cadastrousuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> listagem usuários</h5> 
			</a>
			<a target="principal" href="addusuario.php"> 
			<img src="imagens/cadastrousuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Cadastra usuário</h5> 
			</a>
			<a target="principal" href="usuario.php"> 
			<img src="imagens/usuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Usuários por Setor</h5> 
			</a>
			<a target="principal" href="usuariosenha.php"> 
			<div class="span3"><img src="imagens/senha.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Alterar Senha</h5> 
			</a>
		</div>
    </div>
  </div>
  </div>
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse2">
        Setor
      </a>
    </div>
    <div id="collapse2" class="accordion-body collapse">
      <div class="accordion-inner">
		
			<a target="principal" href="listagemsetor.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem de Setores</h5> 
			</a>
       		<a target="principal" href="addsetor.php"> 
			<img src="imagens/setor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> cadastro de Setor</h5> 
			</a>
			<a target="principal" href="setor.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Busca por Setor</h5> 
			</a>
	  </div>
    </div>
    </div>
    <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse3">
        Fornecedores
      </a>
    </div>
    <div id="collapse3" class="accordion-body collapse">
      <div class="accordion-inner">
			<a target="principal" href="listagemfornecedor.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem de Fornecedores</h5> 
			</a>
       		<a target="principal" href="addfornecedor.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Adiciona Fornecedor</h5> 
			</a>
			
      </div>
    </div>
    </div>
	  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse4">
        Empenho
      </a>
    </div>
    <div id="collapse4" class="accordion-body collapse">
      <div class="accordion-inner">
	       	<a target="principal" href="listagemempenho.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem Empenho</h5> 
			</a>
			<a target="principal" href="addempenho.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Adiciona Empenho</h5> 
			</a>
  
			
      </div>
    </div>
  </div>
    <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse5">
        Produtos
      </a>
    </div>
    <div id="collapse5" class="accordion-body collapse">
      <div class="accordion-inner">
            <a target="principal" href="listagemproduto.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem preço Produtos</h5> 
			</a>
			<a target="principal" href="produtogrupo.php"> 
			<img src="imagens/entradaproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Alterar Grupo do Produto</h5> 
			</a>
			<a target="principal" href="addprodutos.php"> 
			<img src="imagens/relatorioproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Adicionar grupo de Produto</h5> 
			</a>
			
      </div>
    </div>
  </div>
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse6">
        Pedidos
      </a>
    </div>
    <div id="collapse6" class="accordion-body collapse">
      <div class="accordion-inner">
           <a target="principal" href="listagemdepedidos.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem  Pedidos</h5> 
			</a>
      
			<a target="principal" href="pedidomaterial.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Gerar pedido</h5> 
			</a>
			<a target="principal" href="movimentacao.php"> 
			<img src="imagens/opcoesproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Baixa produtos pedido</h5> 
			</a>
	  </div>
	  <a target="_top" href="logout.php" style="text-decoration: none">
    </div>
  </div>
   <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse7">
        Relatórios 
      </a>
    </div>
    <div id="collapse7" class="accordion-body collapse">
      <div class="accordion-inner">
            <a target="principal" href="relatorioanalitico.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Relatorio Análitico</h5> 
			</a> 
			<a target="_top" href="relatoriosintetico.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Relatótio Sintético </h5> 
			</a>
	  </div>
	  
    </div>
  </div>
   <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse8">
        Backup 
      </a>
    </div>
    <div id="collapse8" class="accordion-body collapse">
      <div class="accordion-inner">
            <a target="principal" href="backup.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Backup do Sistema </h5> 
			</a> 
			      
			<a target="_top" href="logout.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Sair do Sistema </h5> 
			</a>
	  </div>
	  
    </div>
  </div>
</div>
<? } ?>  <!-- Fim Desenvolvedor -->

<!-- Administrador -->			
 <? if ($_SESSION["tipousuario"] == '2') { ?>				
<div class="accordion" id="accordion2">
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1">
        Usuários
      </a>
    </div>
    <div id="collapse1" class="accordion-body collapse">
      <div class="accordion-inner">
            
			<a target="principal" href="listagemusuarios.php"> 
			<img src="imagens/cadastrousuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> listagem usuários</h5> 
			</a>
			<a target="principal" href="addusuario.php"> 
			<img src="imagens/cadastrousuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Cadastra usuário</h5> 
			</a>
			<a target="principal" href="usuario.php"> 
			<img src="imagens/usuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Usuários por Setor</h5> 
			</a>
			<a target="principal" href="usuariosenha.php"> 
			<div class="span3"><img src="imagens/senha.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Alterar Senha</h5> 
			</a>
		</div>
    </div>
  </div>
  </div>
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse2">
        Setor
      </a>
    </div>
    <div id="collapse2" class="accordion-body collapse">
      <div class="accordion-inner">
		
			<a target="principal" href="listagemsetor.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem de Setores</h5> 
			</a>
       		<a target="principal" href="addsetor.php"> 
			<img src="imagens/setor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> cadastro de Setor</h5> 
			</a>
			<a target="principal" href="setor.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Busca por Setor</h5> 
			</a>
	  </div>
    </div>
  </div>
  	  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse3">
        Empenho
      </a>
    </div>
    <div id="collapse3" class="accordion-body collapse">
      <div class="accordion-inner">
	       	<a target="principal" href="listagemempenho.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem Empenho</h5> 
			</a>
			<a target="principal" href="addempenho.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Adiciona Empenho</h5> 
			</a>
  
			
      </div>
    </div>
  </div>
    <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse4">
        Produtos
      </a>
    </div>
    <div id="collapse4" class="accordion-body collapse">
      <div class="accordion-inner">
            <a target="principal" href="listagemproduto.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem preço Produtos</h5> 
			</a>
 			<a target="principal" href="produtogrupo.php"> 
			<img src="imagens/entradaproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Alterar Grupo do Produto</h5> 
			</a>
			<a target="principal" href="addprodutos.php"> 
			<img src="imagens/relatorioproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Adicionar grupo de Produto</h5> 
			</a>
			
      </div>
    </div>
  </div>
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse5">
        Pedidos
      </a>
    </div>
    <div id="collapse5" class="accordion-body collapse">
      <div class="accordion-inner">
           <a target="principal" href="listagemdepedidos.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem  Pedidos</h5> 
			</a>
      
			<a target="principal" href="pedidomaterial.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Gerar pedido</h5> 
			</a>
			<a target="principal" href="movimentacao.php"> 
			<img src="imagens/opcoesproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Baixa produtos pedido</h5> 
			</a>
	  </div>
	  
    </div>
  </div>
    <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse6">
        Backup
      </a>
    </div>
    <div id="collapse6" class="accordion-body collapse">
      <div class="accordion-inner">
           <a target="principal" href="backup.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Backup Sistema</h5>  
			</a>
      
			<a target="_top" href="logout.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Sair do Sistema</h5> 
			</a>
			
	  </div>
	  
    </div>
  </div>
</div>
<? } ?>  
<!-- Fim Administrador -->
<!-- Operador -->			
 <? if ($_SESSION["tipousuario"] == '3') { ?>				
<div class="accordion" id="accordion2">
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1">
        Usuários
      </a>
    </div>
    <div id="collapse1" class="accordion-body collapse">
      <div class="accordion-inner">
            <!--
			<a target="principal" href="listagemusuarios.php"> 
			<img src="imagens/cadastrousuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> listagem usuários</h5> 
			</a>
			<a target="principal" href="addusuario.php"> 
			<img src="imagens/cadastrousuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Cadastra usuário</h5> 
			</a> -->
			<a target="principal" href="usuario.php"> 
			<img src="imagens/usuario.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Usuários por Setor</h5> 
			</a>
			<a target="principal" href="usuariosenha.php"> 
			<div class="span3"><img src="imagens/senha.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Alterar Senha</h5> 
			</a>
		</div>
    </div>
  </div>
  </div>
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse2">
        Setor
      </a>
    </div>
    <div id="collapse2" class="accordion-body collapse">
      <div class="accordion-inner">
		
			<a target="principal" href="listagemsetor.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem de Setores</h5> 
			</a>
			<!--
       		<a target="principal" href="addsetor.php"> 
			<img src="imagens/setor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> cadastro de Setor</h5> 
			</a>
			-->
			<a target="principal" href="setor.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Busca por Setor</h5> 
			</a>
	  </div>
    </div>
  </div>
    <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse3">
        Produtos
      </a>
    </div>
    <div id="collapse3" class="accordion-body collapse">
      <div class="accordion-inner">
            <a target="principal" href="listagemproduto.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem preço Produtos</h5> 
			</a>
       		<a target="principal" href="produtos.php"> 
			<img src="imagens/procurar.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Busca por Grupo dos Produtos</h5> 
			</a>
			<a target="principal" href="produtogrupo.php"> 
			<img src="imagens/entradaproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Alterar Grupo do Produto</h5> 
			</a>
			<a target="principal" href="addprodutos.php"> 
			<img src="imagens/relatorioproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Adicionar grupo de Produto</h5> 
			</a>
			
      </div>
    </div>
  </div>
  <div class="accordion-group btn">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse4">
        Pedidos
      </a>
    </div>
    <div id="collapse4" class="accordion-body collapse">
      <div class="accordion-inner">
           <a target="principal" href="listagemdepedidos.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Listagem  Pedidos</h5> 
			</a>
      
			<a target="principal" href="pedidomaterial.php"> 
			<img src="imagens/gestor.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Gerar pedido</h5> 
			</a>
			<a target="principal" href="movimentacao.php"> 
			<img src="imagens/opcoesproduto.png" alt="" class="img-rounded" width="20" height="20" />
			<h5> Baixa produtos pedido</h5> 
			</a>
	  </div>
	  <a target="_top" href="logout.php" style="text-decoration: none">
    </div>
  </div>
</div>
<? } ?>  <!-- Fim Operador -->
</div>
	<link rel="stylesheet" href="css/validationEngine.jquery.css"type="text/css" />
	<link href="css/index.css" rel="stylesheet">
	<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
	<script src="js/languages/jquery.validationEngine-pt_BR.js"	type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.validationEngine.js"	type="text/javascript" charset="utf-8"></script>
	<script src="js/jsValidate.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap-collapse.js"></script>