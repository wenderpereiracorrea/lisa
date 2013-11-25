<?
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();

if (isset($_GET['q'])) {
	$valorBusca = ($_GET['q']);
}
$sql = "
	SELECT preprod.* ,produt.*,((preprod.quantidade * preprod.preco)) as result
		FROM precoproduto as preprod,produto as produt
		WHERE preprod. produto_idproduto = produt.idproduto
		AND (nome LIKE '%%%$valorBusca%%') LIMIT 230";

mysql_query("SET NAMES 'utf8'");
mysql_query('SET character_set_connection=utf8');
mysql_query('SET character_set_client=utf8');
mysql_query('SET character_set_results=utf8');
$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
$totalconsult = mysql_num_rows($Resultado);
if($totalconsult < 1) { ?>
<!-- total de resultados da consulta -->
<a href="addprecoprodutos.php"  class="btn btn-large btn-primary"><i class="icon-plus icon-white"></i> Adicionar</a>
<!--=============================================================
	JS
	=============================================================-->
<? }elseif($totalconsult >= 30){ ?>
<div class="alert alert-block alert-error fade in">
<? echo "FAVOR REFINAR A CONSULTA SOMENTE OS PRIMEIROS 30 ITENS SÃO EXIBIDOS"?>
</div>
<table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="4" cellspacing="4">
	<tr>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Cod grupo</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>nome</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Quantidade</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Preço</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-edit icon-white"></i><b>Alterar</b></td>
		</td>
	</tr>
	<? }else{ ?>
	<?  echo "Total: $totalconsult" ?>
	<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
			<tr>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Cod grupo</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>nome</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Quantidade</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Preço</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-edit icon-white"></i><b>Alterar</b></td>
			</tr>
		<? } ?>
		<?
                $i=0;
		while ($array_exibir = mysql_fetch_array($Resultado)) {
		$valprod = $array_exibir['idprecoproduto']
			?>
		<!-- Inicio da formação dos links para exibir a consulta -->
		<tr>
			<td style="background-color: #f5f5f5;"><a href="addprecoprodutos.php?modo=parc&idprecoproduto=<?echo $valprod?>">
			<?php echo $array_exibir['produto_codproduto'] ?></a>
			</td>
			<td style="background-color: #f5f5f5;"><a href="addprecoprodutos.php?modo=parc&idprecoproduto=<?echo $valprod?>">
			<?php echo $array_exibir['nome'] ?></a>
			</td>
			<td style="background-color: #f5f5f5;"><a href="addprecoprodutos.php?modo=parc&idprecoproduto=<?echo $valprod?>">
			<?php echo $array_exibir['quantidade'] ?></a>
			</td>
			<td style="background-color: #f5f5f5;"><a href="addprecoprodutos.php?modo=parc&idprecoproduto=<?echo $valprod?>">
			$ <?php //echo $array_exibir['preco'] ?>
			  <?php $valorpreco = ($array_exibir['preco']); ?>
			  <?php echo number_format($valorpreco,2,",","."); ?></a>
			</td>
			<td style="background-color: #f5f5f5;"><a href="addprecoprodutos.php?modo=parc&idprecoproduto=<?echo $valprod?>">
			  <?php //$valor = str_replace(".",",",$array_exibir['result']); ?>
			  <?php $valor = ($array_exibir['result']); ?>
			  <?php echo number_format($valor,2,",","."); ?>
			  	  
			$ <?php //echo '' .$valor; ?></a>
			
			</td>
			<td>
			 <a href="addprecoprodutos.php?modo=parc&idprecoproduto=<?echo $valprod?>"><i class="icon-edit"></i> Alterar</a>
			</td>
			<?
			$i++;
		}
		?>