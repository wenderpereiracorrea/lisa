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
    <a href="listagemusuarios.php">Listagem Usuários</a>
    </li>
    <li><a href="addusuario.php">Cadastro Usuário</a></li>
	<li><a href="usuario.php">Usuário por Setor</a></li>
	<li><a href="usuariosenha.php">Novo Senha</a></li>
    </ul>
		<!--
		==========================================================================
		==========================================================================
	   LISTAGEM DE USUARIOS
		==========================================================================
		==========================================================================
		-->
		<legend><H4><i class="icon-shopping-cart"></i> LISTAGEM DE USUARIOS</h4></legend>
		<?
		$sqlResultadoprodutospedido = 
						"SELECT * FROM setor as seto,usuario as usua, opcao as opr
						 where seto.codsetor = usua.setor_codsetor and
						 usua.ativo = opr.idopcao
						 ";
						 
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
		<? } elseif ($totalconsult >= 1150) { ?>
			<div class="alert alert-block alert-error fade in">
				<? echo "FAVOR REFINAR A CONSULTA SOMENTE OS PRIMEIROS 150 ITENS SÃO EXIBIDOS" ?>
			</div>
			<table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="4" cellspacing="4">
				<tr>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Id</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Login</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Email</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Ativo</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Setor</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data cadastro</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Editar</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Senha</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-plus icon-white"></i> Pedidos</b></td>
					<? if ($_SESSION["tipousuario"] == '1') { ?>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-plus icon-trash"></i> Excluir</b></td>
					<? } ?>
					</td>
				</tr>
			<? } else { ?>
				<span class="badge badge-info"><? echo "Total: $totalconsult" ?></span>
				<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
					<tr>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Id</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Login</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Email</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Ativo</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Setor</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data cadastro</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Editar</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Senha</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-plus icon-white"></i> Pedidos</b></td>
					<? if ($_SESSION["tipousuario"] == '1') { ?>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-plus icon-trash"></i> Excluir</b></td>
					<? } ?>
					</tr>
				<? } ?>
				<?
				while ($array_exibir = mysql_fetch_array($Resultadoprodutospedido)) {
					$valprod = urlencode($array_exibir['codusuario'])
					?><!-- Inicio da formação dos links para exibir a consulta -->
					<tr>
						<td><label><? echo $array_exibir['codusuario'] ?></label>
						<td><label><? echo $array_exibir['login'] ?></label>
						<td><label><? echo $array_exibir['email'] ?></label>
						<td><label><? echo $array_exibir['nome'] ?></label>
						<td><input type="text" class="input-xlarge uneditable-input span2" readonly="true" value="<?php echo $array_exibir['nomesetor'] ?>"></td>
						<td><input type="text" class="input-xlarge uneditable-input span2" readonly="true"  value="<?php echo $array_exibir['datacadastro'] ?>"></td>
						<td><a href="addusuario.php?modo=parc&idusuario=<? echo $valprod ?>&idmovimentacao=<? echo $g_idpedido ?>"><i class="icon-pencil"></i> Editar</a></td>
						<td><a href="addusuariosenha.php?modo=parc&idusuario=<? echo $valprod ?>&idmovimentacao=<? echo $g_idpedido ?>">
						<i class="icon-pencil"></i> Senha</a></td>
						<td><a href="listagempedidoporusuario.php?modo=parc&idusuario=<? echo $valprod ?>">
						<i class="icon-plus"></i> Pedidos</a></td>
						<? if ($_SESSION["tipousuario"] == '1') { ?>
						<td><a href="dao/removerusuario.php?modo=parc&idproduto=<? echo $array_exibir['codusuario'] ?>&idmovimentacao=<? echo $array_exibir['email'] ?>" onclick="return confirm('Confirma exclusão do registro Id: <?php echo $array_exibir['codusuario'] ?>')"><i class="icon-trash"></i> Excluir</a>
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
