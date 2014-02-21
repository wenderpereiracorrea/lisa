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
<?php
$data_ano = date("Y");
$data_mes = date("m");
$data_dia = date("d");
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
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
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
        <label><H5 align="center">RELÁTORIO DE PEDIDOS</H5></label> 
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
		if($mes == 1){
		$ano_anterior = $data_ano - 1;
		}
		$mes_anterior = $mes - 01;
		if($mes_anterior == -1 || $mes_anterior == 0){
			$mes_anterior = 12;
		}
	?>
		
	<div class="container">
        <?
        $sqlResultadorelatorio = "
			SELECT ped.idpedido,
				   ped.nome as solicitante,
				   str.setor,
				   pedimov.codmovimentacao,
				   prod.idproduto,
				   prod.nome as nomeproduto,
				   pedimov.quantidade,
				   pecvenda.preco,
				   ped.datacriacao,
				   (pedimov.quantidade * pecvenda.preco) as total
			FROM 
				pedido as ped,
				pedidomovimentacao as pedimov,
				precoproduto as pecvenda,
				produto as prod,
				setor as str
			where
				ped.idpedido = pedimov.pedido_idpedido 
				and pedimov.precoproduto_idprecoproduto = pecvenda.idprecoproduto 
				and pecvenda.produto_idproduto = prod.idproduto 
				and ped.setor_codigosetor = str.codsetor AND
				(DATE(ped.datacriacao) >= '$data_ano-$mes-01' AND DATE(ped.datacriacao) <= '$data_ano-$mes-31')
				order by ped.idpedido ASC";
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
        <? } elseif ($totalconsult >= 1150) { ?>
            <div class="alert alert-block alert-error fade in">
                <? echo "FAVOR REFINAR A CONSULTA SOMENTE OS PRIMEIROS 150 ITENS SÃO EXIBIDOS" ?>
            </div>
			<table class="table table-hover">
                <tr>
				<td style="background-color: #049cdb; color: #FFFFFF;"><b>Pedido</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Setor</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Usuário</td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Id produto</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Produto</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Qtd</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Preço</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data pedido</b></td> 
                    </td>
                </tr>
			<? } else { ?>
                <!--<span class="badge badge-info"><? echo "Total: $totalconsult" ?></span> -->
                <table class="table table-hover">
				<tr>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Pedido</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Setor</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Usuário</td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Id produto</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Produto</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Qtd</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Preço</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b></td>
					<td style="background-color: #049cdb; color: #FFFFFF;"><b>Data pedido</b></td> 
				</tr>
                <? } ?>
                <?
                while ($array_exibir = mysql_fetch_array($Resultadorelatorio)) {
                    $valprod = urlencode($array_exibir['codfornecedor'])
                    ?>
					<!-- Inicio da formação dos links para exibir a consulta -->
                    <tr>
                        <td><?php echo $array_exibir['idpedido'] ?></td>
						<td><?php echo $array_exibir['setor'] ?></td>
                        <td><?php echo $array_exibir['solicitante'] ?></td>
						<td><?php echo $array_exibir['idproduto'] ?></td>
						<td><?php echo $array_exibir['nomeproduto'] ?></td>
                        <td><?php echo $array_exibir['quantidade'] ?></td>
                        <td>R$ <?php echo number_format($array_exibir['preco'], 2, ",", "."); ?></td>
                        <td>R$ <?php echo number_format($array_exibir['total'], 2, ",", "."); ?></td>
						<td><?php echo $array_exibir['datacriacao'] ?></td>
						<? $valorpreco = $array_exibir['preco'];
						   $valorgeral = $array_exibir['total'];
						?>
					</tr>
					
					<? $totalpreco += $valorpreco ?>			
					<? $totalgeral += $valorgeral ?>						
					<?
                    $i++;
				}
				?>	
					<tr>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b> </span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span></span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span></span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span></span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b></span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b></span></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span></span><b>Total :</td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span></span><b>R$<? echo number_format(($totalgeral  - 0.01),2,",","."); ?></td>
						<td style="background-color: #049cdb; color: #FFFFFF;"><span><b></span></td>
						
						
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