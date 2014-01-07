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
    <a href="listagemproduto.php">Listagem Produto</a>
    </li>
    <li><a href="produtogrupo.php">Alterar Grupo do Produto</a></li>
	<li><a href="addprodutos.php">Adicionar grupo de Produto</a></li>
	</ul>
		<!--
		==========================================================================
		==========================================================================
	   LISTAGEM DE USUARIOS
		==========================================================================
		==========================================================================
		-->
		<legend><H4><i class="icon-shopping-cart"></i> Estoque Atual</h4></legend>
		<?
                $sqlResultadoprodutospedido = 
                "SELECT	preprod . *,
					   unimed.medida,
					   produt . *,
					  (preprod.quantidade * preprod.preco) as result
					   
					   FROM
					   precoproduto as preprod,
					   produto as produt,
					   unidademedida as unimed
					   WHERE
					   preprod.produto_idproduto = produt.idproduto and
					   produt.unidademedida_codunidademedida  = unimed.codunidademedida
					   order by nome asc";
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
		<? } elseif ($totalconsult >= 21550) { ?>
			<div class="alert alert-block alert-error fade in">
				<? echo "FAVOR ENTRAR EM CONTATO COM ADMINISTRADOR DO SISTEMA PARA OTIMIZAÇÃO DO BANCO DE DADOS" ?>
			</div>
			<table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="4" cellspacing="4">
                        <tr>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b>id</b></td>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b>Empenho</b></td>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b>Id produto</b></td>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b>Medida</b>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b>Nome</b></td>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b>Quantidade Minima</b>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b>Quantidade</b>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b>Preço</b>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Editar</b></td>
									<? if ($_SESSION["tipousuario"] == '1') { ?>
									<td style="background-color: #049cdb; color: #FFFFFF;"><b>Excluir</b>
									<? } ?>
                            </td>
                        </tr>
			<? } else { ?>
				<span class="badge badge-info"><? echo "Total: $totalconsult" ?></span>
				<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
                                    <tr>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>id</b></td>
										<td style="background-color: #049cdb; color: #FFFFFF;"><b>Empenho</b></td>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>id produto</b></td>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>medida</b>
										<td style="background-color: #049cdb; color: #FFFFFF;"><b>nome</b></td>
										<td style="background-color: #049cdb; color: #FFFFFF;"><b>Quantidade Minima</b>
										<td style="background-color: #049cdb; color: #FFFFFF;"><b>Quantidade</b>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>preço</b>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Editar</b></td>
									    <? if ($_SESSION["tipousuario"] == '1') { ?>
									    <td style="background-color: #049cdb; color: #FFFFFF;"><b>Excluir</b>
										<? } ?>
                                    </tr>
				<? } ?>
				<?
				while ($array_exibir = mysql_fetch_array($Resultadoprodutospedido)) {
					$valprod = urlencode($array_exibir['idproduto'])
					?><!-- Inicio da formação dos links para exibir a consulta -->
					<tr>
						<td><label><?php echo $array_exibir['idprecoproduto'] ?></label>
						<td><label><?php echo $array_exibir['empenho_codempenho'] ?></label>
						<td><label><?php echo $array_exibir['produto_idproduto'] ?></label>
						<td><label><?php echo $array_exibir['medida'] ?></label>
						<td><label><?php echo $array_exibir['nome'] ?></label>
						<? if ($array_exibir['quantidademinima'] < $array_exibir['quantidade']) { ?>
						<td><span class="label label-important"><?php echo $array_exibir['quantidademinima'] ?></span></td>
						<? }else{ ?>
						<td><input type="text" class="input-xlarge uneditable-input span1" readonly="true" value="<?php echo $array_exibir['quantidademinima'] ?>"></td>
						<? } ?>
						<td><input type="text" class="input-xlarge uneditable-input span1" readonly="true" value="<?php echo $array_exibir['quantidade'] ?>"></td>
						<?php $preco = ($array_exibir['preco']); ?>
						<td><input type="text" class="input-xlarge uneditable-input span2" readonly="true"  value="<?php echo number_format($preco,2,",","."); ?>"></td>
                         <?php $valor = ($array_exibir['result']); ?>
                         <td><input type="text" class="input-xlarge uneditable-input span2" readonly="true"  value="<?php echo number_format($valor,2,",","."); ?>"></td>
						<td><a href="addprodutos.php?modo=parc&idprocesso=<? echo $valprod ?>&idmovimentacao=<? echo $g_idpedido ?>">
							<i class="icon-pencil"></i> Editar</a>
						</td>
						<? if ($_SESSION["tipousuario"] == '1') { ?>
						<td><a href="dao/removerproduto.php?modo=parc&idproduto=<? echo $valprod ?>&idmovimentacao=<? echo $g_idpedido ?>" onclick="return confirm('Confirma exclusão do registro <?php echo $array_exibir['codmovimentacao'] ?>')"><i class="icon-trash"></i> Excluir</a>
                   		<? } ?>
						</td>
				   </tr>
				   <? $total1 = $total1 + ($array_exibir['quantidade'] * $array_exibir['preco']); ?>
					<?
					$i++;
				}
				?> <span class="badge badge-info">R$ <?
				echo number_format($total1,2,",",".");
				?> </span> <?
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
