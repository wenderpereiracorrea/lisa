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
    <a href="listagemfornecedor.php">Listagem de Fornecedores</a>
    </li>
    <li><a href="addfornecedor.php">Adiciona XXX</a></li>
	
	</ul>
    </div>
		<!--
		==========================================================================
		==========================================================================
	   LISTAGEM DE USUARIOS
		==========================================================================
		==========================================================================
		-->
		<legend><H4><i class="icon-shopping-cart"></i> LISTAGEM DE FORNECEDORES</h4></legend>
		<?
		$sqlResultadoprodutospedido = 
									"SELECT * FROM FORNECEDOR as forn
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
		<? } elseif ($totalconsult >= 150) { ?>
			<div class="alert alert-block alert-error fade in">
				<? echo "FAVOR REFINAR A CONSULTA SOMENTE OS PRIMEIROS 150 ITENS SÃO EXIBIDOS" ?>
			</div>
			<table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="3" cellspacing="3">
				<tr>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Cod</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Nome</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Tel</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>CNPJ</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Email</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>End</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Numero</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Obs</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Ativo</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Editar</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-tash icon-white"></i> Excluir</b></td>
					</td>
				</tr>
			<? } else { ?>
				<span class="badge badge-info"><? echo "Total: $totalconsult" ?></span>
				<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
					<tr>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Cod</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Nome</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Tel</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>CNPJ</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Email</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>End</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Numero</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Obs</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Ativo</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Editar</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-tash icon-white"></i> Excluir</b></td>
					</tr>
				<? } ?>
				<?
				while ($array_exibir = mysql_fetch_array($Resultadoprodutospedido)) {
					$valprod = urlencode($array_exibir['codfornecedor'])
					?><!-- Inicio da formação dos links para exibir a consulta -->
					<tr>
						<td><label><?php echo $array_exibir['codfornecedor'] ?></label>
						<td><label><?php echo $array_exibir['nome'] ?></label>
						<td><label><?php echo $array_exibir['tel'] ?></label>
						<td><label><?php echo $array_exibir['cnpj'] ?></label>
						<td><label><?php echo $array_exibir['end'] ?></label>
						<td><label><?php echo $array_exibir['email'] ?></label>
						<td><label><?php echo $array_exibir['numero'] ?></label>
						<td><label><?php echo $array_exibir['obs'] ?></label>
						<td><label><?php echo $array_exibir['data'] ?></label>
						<td><label><?php echo $array_exibir['ativo'] ?></label>
						<td><a href="addfornecedor.php?modo=parc&fornecedor=<? echo $valprod ?>">
							<i class="icon-pencil"></i> Editar</a>
						</td>
						<td><a href="dao/removerfornecedor.php?modo=parc&idproduto=<? echo $valprod ?>&idmovimentacao=<? echo $g_idpedido ?>" onclick="return confirm('Confirma exclusão do registro Id: <?php echo $array_exibir['codusuario'] ?>')"><i class="icon-trash"></i> Excluir</a>
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
