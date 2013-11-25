<? include "header.php"; 

if(empty($_GET["idusuario"])) {
}else{
	$idusuario = ($_GET["idusuario"]);
}

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
	 <div class="accordion" id="accordion2">
		<!--
		==========================================================================
		==========================================================================
	   LISTAGEM DE USUARIOS
		==========================================================================
		==========================================================================
		-->
		<legend><H4><i class="icon-shopping-cart"></i> LISTAGEM DE PEDIDOS POR USUÁRIOS DO SISTEMA</h4></legend>
		<?
		$sqlResultadoprodutospedido = 
		"SELECT * FROM setor as seto,usuario as usua, opcao as opr,pedido as pedvenda
						 where seto.codsetor = usua.setor_codsetor and
						 usua.ativo = opr.idopcao and
             usua.codusuario = pedvenda.usuario_codusuario and
             usua.codusuario = '$idusuario'";
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
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Codigo pedido</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Nome</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Setor</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data criação</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data Fechamento</b>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Usuário</b>                                            
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Add</b></td>
					</td>
				</tr>
			<? } else { ?>
				<span class="badge badge-info"><? echo "Total: $totalconsult" ?></span>
				<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
					<tr>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Codigo pedido</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Nome</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Setor</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data criação</b>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data Fechamento</b>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Usuário</b>       
					<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Add</b></td>
					</tr>
				<? } ?>
				<?
				while ($array_exibir = mysql_fetch_array($Resultadoprodutospedido)) {
					$valprod = urlencode($array_exibir['idpedido'])
					?><!-- Inicio da formação dos links para exibir a consulta -->
					<tr>
						<td><label><?php echo $array_exibir['codpedido'] ?></label>
						<td><label><?php echo $array_exibir['nome'] ?></label>
						<td><label><?php echo $array_exibir['setor_codigosetor'] ?></label>
						<td><input type="text" class="span2" value="<?php echo $array_exibir['datacriacao'] ?>"></td>
						<td><input type="text" class="span2"  value="<?php echo $array_exibir['datafechamento'] ?>"></td>
                                                <td><input type="text" class="span2"  value="<?php echo $array_exibir['usuario_codusuario'] ?>"></td>
						<td><a href="movimentacao.php?G_idpedido=<? echo $valprod ?>">
							<i class="icon-pencil"></i> Editar</a>
						</td>
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
