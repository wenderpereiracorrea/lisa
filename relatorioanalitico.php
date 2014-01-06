<?
include "header.php";
include "conexao.php";
connect();
@session_start(); // Inicializa a sessão
?>
<? 
if(empty($_GET["mes"])) {
}else{
	$mes = ($_GET["mes"]);
}
?>

<?
$sql = "SELECT * FROM categoria
			";
mysql_query("SET NAMES 'utf8'");
mysql_query('SET character_set_connection=utf8');
mysql_query('SET character_set_client=utf8');
mysql_query('SET character_set_results=utf8');
$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
while ($array_exibir = mysql_fetch_array($Resultado)) {
    $codcategoria = ($array_exibir['codcategoria']);
    $codgrupo = ($array_exibir['codgrupo']);
    $nomegrupo = ($array_exibir['nome']);
}
?>

<?php
$data_ano = date("Y");
$data_mes = date("m");
$data_dia = date("d");

?>
<?

function getArray1() {
    $sql = "select * from categoria";
    $Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
    $i = 0;
    $categoria = array();
    while ($array_exibir = mysql_fetch_array($Resultado)) {
        $categoria[$array_exibir['codgrupo']] = $array_exibir['nome'];
        $i++;
    }
    return $categoria;
}

$meuArray1 = getArray1();

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
    jQuery(document).ready(function() {  // binds form submission and fields to the validation engine
        jQuery("#form1").validationEngine();
    });
</script>

<form name="form1" id="form1" method="post" action="relatorioanalitico.php">
    <div class="container">
		<a  align="left" target="_Blank" href="relatorioanalitico.php" style="text-decoration: none"><i class="icon-print"></i></a>
		<a href="#" onclick="window.print(); return false;">Imprimir</a>
        <label><H5 align="center">SERVIÇO DE ADMINISTRAÇÃO DE SERVIÇOS GERAIS - SASG </H5></label> 
        <label><H5 align="center">RELÁTORIO DE MOVIMENTAÇÃO DE ALMOXARIFADO - RMA</H5></label> 
        <label><H5 align="center">RELÁTORIO ANALÍTICO</H5></label> 
        <label><H5>UNIDADE GESTORA: FUNDAÇÃO CASA DE RUI BARBOSA</H5></label> 
        <label><H5>CÓDIGO DA UNIDADE GESTORA: 344001</H5></label> 
		<label><H5>GESTÃO: 34201</H5></label>
        <label><H5>MÊS: <?if ($mes == 01 || $mes == 1){ echo "JANEIRO";}
						else if ($mes == 02 || $mes == 2){ echo "FEVEREIRO";}
						else if ($mes == 03 || $mes == 3){ echo "MARÇO";}
						else if ($mes == 04 || $mes == 4){ echo "ABRIL";}
						else if ($mes == 05 || $mes == 5){ echo "MAIO";}
						else if ($mes == 06 || $mes == 6){ echo "JUNHO";}
						else if ($mes == 07 || $mes == 7){ echo "JULHO";}
						else if ($mes == 08 || $mes == 8){ echo "AGOSTO";}
						else if ($mes == 09 || $mes == 9){ echo "SETEMBRO";}
						else if ($mes == 10){ echo "OUTUBRO";}
						else if ($mes == 11){ echo "NOVEMBRO";}						
						else if ($mes == 12){ echo "DEZEMBRO";} ?>
				</H5>
		</label> 
        <label><H5>ANO: <? echo $data_ano; ?> </H5></label> 
    </div>
	<?php
		//echo $mes;
		$mes_anterior = $mes - 01;
		if($mes_anterior == -1){
			$mes_anterior = 12;
		}
		//echo $mes_anterior;
		//parent.window.location.reload(); 
	?>
	<!-- Bacalhau para montar o relatório - feiaço-->
	<?
        $sqlsaldoanterior = "select c.codgrupo, (pr.quantidade * pr.preco) as saldo_anterior from categoria c, precoproduto pr, produto p
					where p.categoria_codcategoria = c.codcategoria
					and p.idproduto = pr.produto_idproduto
					and (DATE(pr.data) >= '2013-$mes_anterior-01' AND DATE(pr.data) <= '2013-$mes_anterior-31')
					group by c.codgrupo";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');
        $Resultadorelatorio = mysql_query($sqlsaldoanterior) or die("Erro: " . mysql_error());
		while($row=mysql_fetch_array($Resultadorelatorio)){
			$codgrupo = $row['codgrupo'];
			$saldo = $row['saldo_anterior'];
		  
		   $sqlupdate =" update relatorio_analitico set saldo_anterior='$saldo' where codgrupo='$codgrupo'";
		   
			mysql_query($sqlupdate) or die("Erro: " . mysql_error());
		}
		$sqlentrada = "select c.codgrupo, (pr.quantidadeentrada * pr.preco) as entrada, (pm.quantidade * pr.preco) as saida
							from categoria c, precoproduto pr, pedidomovimentacao pm, produto p, pedido pe
							where p.categoria_codcategoria = c.codcategoria
							and pr.idprecoproduto = pm.precoproduto_idprecoproduto
							and pe.idpedido=pm.pedido_idpedido
							and p.idproduto = pr.produto_idproduto
							and (DATE(pm.data) >= '2013-$mes-01' AND DATE(pm.data) <= '2013-$mes-31')
							group by codgrupo";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');
        $Resultadorelatorio1 = mysql_query($sqlentrada) or die("Erro: " . mysql_error());
		while($row1=mysql_fetch_array($Resultadorelatorio1)){
			$codgrupo = $row1['codgrupo'];
			$entrada = $row['entrada'];
				
		    $sqlupdate1 =" update relatorio_analitico set entrada='$entrada' where codgrupo='$codgrupo'";
		   
			mysql_query($sqlupdate1) or die("Erro: " . mysql_error());
		}
		$sqlsaida = "select c.codgrupo, (pm.quantidade * pr.preco) as saida
						from categoria c, precoproduto pr, pedidomovimentacao pm, produto p, pedido pe
						where p.categoria_codcategoria = c.codcategoria
						and pr.idprecoproduto = pm.precoproduto_idprecoproduto
						and pe.idpedido=pm.pedido_idpedido
						and p.idproduto = pr.produto_idproduto
						and (DATE(pm.data) >= '2013-$mes-01' AND DATE(pm.data) <= '2013-$mes-31')
						group by codgrupo";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');
        $Resultadorelatorio2 = mysql_query($sqlsaida) or die("Erro: " . mysql_error());
		while($row2=mysql_fetch_array($Resultadorelatorio2)){
			$codgrupo = $row2['codgrupo'];
			$saida = $row2['saida'];
		
		    $sqlupdate2 =" update relatorio_analitico set saida='$saida' where codgrupo='$codgrupo'";
		   
			mysql_query($sqlupdate2) or die("Erro: " . mysql_error());
		}
		
	?>
	
	<div class="container">
        <legend><!--<H4><i class="icon-shopping-cart"></i> Relátorio Analítico	</h4>--></legend>
        <?
        $sqlResultadorelatorio = "SELECT codgrupo, saldo_anterior, entrada, saida FROM relatorio_analitico";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');
        $Resultadorelatorio = mysql_query($sqlResultadorelatorio) or die("Erro: " . mysql_error());
        $totalconsult = mysql_num_rows($Resultadorelatorio);
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
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>ESPECIFICAÇÃO <br/>
                            33.90.30.00 - CONSUMO</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>SALDO <br/> ANTERIOR</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>ENTRADA</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>SAÍDA</b></td> 
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>SALDO <BR/>ATUAL</td>

                    </td>
                </tr>
			<? } else { ?>
                <!--<span class="badge badge-info"><? echo "Total: $totalconsult" ?></span> -->
                <table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
                    <tr>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>ESPECIFICAÇÃO <br/>
                                33.90.30.00 - CONSUMO</b></td>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>SALDO <br/> ANTERIOR</b></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><b>ENTRADA</b></td>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>SAÍDA</b></td> 
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>SALDO <BR/>ATUAL</td>


                    </tr>
                <? } ?>
                <?
                while ($array_exibir = mysql_fetch_array($Resultadorelatorio)) {
                    $valprod = urlencode($array_exibir['codfornecedor'])
                    ?><!-- Inicio da formação dos links para exibir a consulta -->
                    <tr>
                        <td><label><?php echo $array_exibir['codgrupo'] ?></label>
						<?php $valor_anterior = ($array_exibir['saldo_anterior']); ?>
                        <td><label>R$ <?php echo number_format($valor_anterior, 2, ",", "."); ?></label>
						<?php $valorentrada = ($array_exibir['entrada']); ?>
                        <td><label>R$ <?php echo number_format($valorentrada, 2, ",", "."); ?></label>
                        <?php $valorsaida = ($array_exibir['saida']); ?>
                        <td><label>R$ <?php echo number_format($valorsaida, 2, ",", "."); ?></label>
						<? $saldo_atual = $valor_anterior + $valorentrada - $valorsaida; ?>
						<td><label>R$ <?php echo number_format($saldo_atual, 2, ",", "."); ?></label>
                     </tr>
					
					<? $totalsaida += $valorsaida ?>			
					<? $totalentrada += $valorentrada ?>						
					<? $totalanterior += $valor_anterior ?>	
					<? $total_saldoatual += $saldo_atual ?>
                    <?
                    $i++;
				}
				?>	
					<tr>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b>Total:  </span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b>R$<? echo number_format($totalanterior,2,",",".");?></span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b>R$<? echo number_format($totalentrada,2,",","."); ?></span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b>R$<? echo number_format($totalsaida,2,",","."); ?></span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b>R$<? echo number_format($total_saldoatual,2,",","."); ?></span></td>
					</tr>
				
				</fieldset>
				</div>
                </div>
				<table>
				<h5>Rio de Janeiro, <? echo $data_dia ?> de <?if ($$mes == 01 || $mes == 1){ echo "Janeiro";}
						else if ($mes == 02 || $mes == 2){ echo "Fevereiro";}
						else if ($mes == 03 || $mes == 3){ echo "Março";}
						else if ($mes == 04 || $mes == 4){ echo "Abril";}
						else if ($mes == 05 || $mes == 5){ echo "Maio";}
						else if ($mes == 06 || $mes == 6){ echo "Junho";}
						else if ($mes == 07 || $mes == 7){ echo "Julho";}
						else if ($mes == 08 || $mes == 8){ echo "Agosto";}
						else if ($mes == 09 || $mes == 9){ echo "Setembro";}
						else if ($mes == 10){ echo "Outubro";}
						else if ($mes == 11){ echo "Novembro";}						
						else if ($mes == 12){ echo "Dezembro";} ?> de <? echo $data_ano ?>.</h5>
				<table>
				<table align="right">
				<tr>
				<td><h5>Valdemiro Martins Junior - Almoxarife Técnico </h5></td>
				</tr>
				<table>
				<script src="bootstrap/js/bootstrap-dropdown.js"></script>
                <script src="bootstrap/js/bootstrap-collapse.js"></script>
                </div>
                </div>
                <?// include "footer.php"  ?>
                </form>