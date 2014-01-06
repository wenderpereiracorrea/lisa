<? include "header.php"; 
include "conexao.php";
connect();
 @session_start(); // Inicializa a sessão
?>
<!--=============================================================
	BUSCA AJAX
	=============================================================-->
<script	src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<!--=============================================================
	SCRIPT JQUEY VALIDATION
	=============================================================-->
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" />
<link rel="stylesheet" href="css/template.css" type="text/css" />
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script	src="js/languages/jquery.validationEngine-pt_BR.js"	type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<script	src="js/jsValidate.js" type="text/javascript"></script>
<!--=============================================================
	SCRIPT JQUEY VALIDATION
	=============================================================-->
<script>
    jQuery(document).ready(function () {  // binds form submission and fields to the validation engine
    jQuery("#form1").validationEngine();
	});
</script>
<form name="form1" id="form1" method="post" action="dao/usuarioinsert.php">
<!--=============================================================
	BUSCA DE PRODUTOS 
	=============================================================-->
		<ul class="nav nav-tabs">
		<li class="active">
		<a href="listagemdepedidos.php">Listagem Pedidos</a>
		</li>
		<li><a href="pedidomaterial.php">Gerar Pedido</a></li>
		<li><a href="movimentacao.php">Baixa Produtos</a></li>
		</ul>
	 <div class="accordion" id="accordion2">
		<!--
		==========================================================================
		==========================================================================
	   LISTAGEM DE USUARIOS
		==========================================================================
		==========================================================================
		-->
		<legend><H4><i class="icon-shopping-cart"></i> LISTAGEM DE PEDIDOS</h4></legend>
		<?
		$sqlResultadoprodutospedido = 
		"SELECT *
			FROM pedido as pedid,setor as setr
			where pedid.setor_codigosetor = setr.codsetor
			ORDER BY idpedido ASC";
		mysql_query("SET NAMES 'utf8'");
		mysql_query('SET character_set_connection=utf8');
		mysql_query('SET character_set_client=utf8');
		mysql_query('SET character_set_results=utf8');
		$Resultadoprodutospedido = mysql_query($sqlResultadoprodutospedido) or die("Erro: " . mysql_error());
		$totalconsult = mysql_num_rows($Resultadoprodutospedido);
		if ($totalconsult < 1) {
			?>
			<!-- total de resultados da consulta -->
			<!--=============================================================
			JS
			=============================================================-->
		<? } elseif ($totalconsult >= 150) { ?>
			<div class="alert alert-block alert-error fade in">
				<? echo "FAVOR REFINAR A CONSULTA SOMENTE OS PRIMEIROS 150 ITENS SÃO EXIBIDOS" ?>
			</div>
			<table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="4" cellspacing="4">
				<tr>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Id</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Codigo pedido</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Nome</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Setor</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data criação</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Usuário</b>                                            
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Pedidos</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-plus icon-white"></i> Editar nome pedido</b></td>
					<? if ($_SESSION["tipousuario"] == '1') { ?>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Excluir</b>       
					<? } ?>
					</td>
				</tr>
			<? } else { ?>
				<span class="badge badge-info"><? echo "Total: $totalconsult" ?></span>
				<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
					<tr>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Id</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Codigo pedido</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Nome</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Setor</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data criação</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Usuário</b>       
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Pedidos</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-plus icon-white"></i> Editar nome pedido</b></td>
					<? if ($_SESSION["tipousuario"] == '1') { ?>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Excluir</b>       
					<? } ?>
					</tr>
				<? } ?>
				<?
				while ($array_exibir = mysql_fetch_array($Resultadoprodutospedido)) {
					$valprod = urlencode($array_exibir['idpedido'])
					?><!-- Inicio da formação dos links para exibir a consulta -->
					<tr>
						<td><label><?php echo $array_exibir['codpedido'] ?></label>
						<td><label><?php echo $array_exibir['idpedido'] ?></label>
						<td><label><?php echo $array_exibir['nome'] ?></label>
						<td><label><?php echo $array_exibir['setr.nomesetor'] ?></label>
						<td><input type="text" class="input-xlarge uneditable-input span2" readonly="true" value="<?php echo $array_exibir['datacriacao'] ?>"></td>
						<td><input type="text" class="input-xlarge uneditable-input span2"  readonly="true" value="<?php echo $array_exibir['usuario_codusuario'] ?>"></td>
						<td><a href="movimentacao.php?G_idpedido=<? echo $valprod ?>">
							<i class="icon-pencil"></i> Pedidos</a>
						</td>
						<td><a href="pedidomaterial.php?idprecoproduto=<? echo $valprod ?>">
							<i class="icon-plus"></i> Editar nome pedido</a>
						</td>
						<? if ($_SESSION["tipousuario"] == '1') { ?>
						<td><a href="dao/XXX.php?modo=parc&idproduto=<? echo $valprod ?>&idmovimentacao=<? echo $g_idpedido ?>" onclick="return confirm('Confirma exclusão do registro <?php echo $array_exibir['codmovimentacao'] ?>')"><i class="icon-trash"></i> Excluir</a>
						<? } ?>
				   </tr>
					<?
					$i++;
				}
?>
</div>
	</div>
	</fieldset>
	<script src="bootstrap/js/bootstrap-dropdown.js"></script>
	<script src="bootstrap/js/bootstrap-collapse.js"></script>
	</div>
	</div>
	<? //include "footer.php" ?>
</form>
