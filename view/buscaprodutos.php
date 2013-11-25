<?
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();
$date = date("d/m/y");
$hora = date("H:i");
if (isset($_GET['q'])) {
	$valorBusca = ($_GET['q']);
}
$sql = "SELECT  * FROM produto where (nome LIKE '%%%$valorBusca%%') LIMIT 30;";
mysql_query("SET NAMES 'utf8'");
mysql_query('SET character_set_connection=utf8');
mysql_query('SET character_set_client=utf8');
mysql_query('SET character_set_results=utf8');
$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
$totalconsult = mysql_num_rows($Resultado);
if($totalconsult < 1) { ?>
<!-- total de resultados da consulta -->
<a href="addprodutos.php"  class="btn btn-large btn-primary"><i class="icon-plus icon-white"></i> Adicionar</a>
<!--=============================================================
	JS
	=============================================================-->
<? }elseif($totalconsult >= 30){ ?>
<div class="alert alert-block alert-error fade in">
<? echo "FAVOR REFINAR A CONSULTA SOMENTE OS PRIMEIROS 30 ITENS SÃO EXIBIDOS"?>
</div>
<table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="4" cellspacing="4">
	<tr>
		<td style="background-color: #049cdb; color: #FFFFFF;"><b>Ficha</b></td>
		<td style="background-color: #049cdb; color: #FFFFFF;"><b>Produto</b></td>
		<td style="background-color: #049cdb; color: #FFFFFF;"><b>Min</b>		
		<td style="background-color: #049cdb; color: #FFFFFF;"><b>Max</b>
		<td style="background-color: #049cdb; color: #FFFFFF;"><b>Ativo</b>
		<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-edit icon-white"></i> Alterar</b></td>
	</td>
	</tr>
	<? }else{ ?>
	<?  echo "Total: $totalconsult" ?>
	<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
		<tr>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Ficha</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Produto</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Min</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Max</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b>Ativo</b></td>
			<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-edit icon-white"></i> Alterar</b></td>
		</tr>
		<? } ?>
		<?
		while ($array_exibir = mysql_fetch_array($Resultado)) {
		$valprod = urlencode($array_exibir['idproduto'])
			?>
		<!-- Inicio da formação dos links para exibir a consulta -->
		<tr>
			<td><a href="addprodutos.php?modo=parc&idprocesso=<?echo $valprod?>">
			<? echo $array_exibir['idproduto'] ?></a>
			</td>
			<td><a href="addprodutos.php?modo=parc&idprocesso=<?echo $valprod?>">
			<? echo $array_exibir['nome'] ?></a>
			</td>
			<td><a href="addprodutos.php?modo=parc&idprocesso=<?echo $valprod?>">
			<? echo $array_exibir['quantidademinima'] ?></a>
			</td>
			<td><a href="addprodutos.php?modo=parc&idprocesso=<?echo $valprod?>">
			<? echo $array_exibir['quantidademaxima'] ?></a>
			</td>
			<td><a href="addprodutos.php?modo=parc&idprocesso=<?echo $valprod?>">
			<? $test = $array_exibir['ativo'];
			if ($test == 1){
				?><i class="icon-ok-sign"></i> <? echo ("ativo");
			}else{
				?><i class="icon-ban-circle"></i> <? echo ("inativo");
			}
				
			?></a>
			</td>
			<td>
			 <a href="addprodutos.php?modo=parc&idprocesso=<?echo $valprod?>"><i class="icon-edit"></i> Alterar</a>
			</td>
			</tr>
			<?
			$i++;
		}
		
		?>