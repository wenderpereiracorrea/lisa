<? include "header.php"; 
include "conexao.php";
connect();
 @session_start(); // Inicializa a sessão
?>

<!-- Bacalhau para zerar a tabela de relatório -->
<?
        $sqlupdate ="update relatorio_analitico set saldo_anterior =0.00, entrada = 0.00, saida = 0.00";
		   
			mysql_query($sqlupdate) or die("Erro: " . mysql_error());
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
<form name="form1" id="form1" method="post" action="#">
    <div class="container">
			
        <label><H5 align="center">SERVIÇO DE ADMINISTRAÇÃO DE SERVIÇOS GERAIS - SASG </H5></label> 
        <label><H5 align="center">RELÁTORIO DE MOVIMENTAÇÃO DE ALMOXARIFADO - RMA</H5></label> 
        <label><H5 align="center">RELÁTORIO SINTÉTICO</H5></label> 
        <label><H5>UNIDADE GESTORA: FUNDAÇÃO CASA DE RUI BARBOSA</H5></label> 
        <label><H5>CÓDIGO DA UNIDADE GESTORA: 344001</H5></label> 
		<label><H5>GESTÃO: 34201</H5></label>
        <label><H5>MÊS: <select name="cmbdata" id="idcmbdata" onchange="location.href = 'relatoriosintetico.php?mes=' + this.value;">
								<option value=""> </option>
								<option value="01">Janeiro</option>
								<option value="02">Fevereiro</option>
								<option value="03">Março</option>
								<option value="04">Abril</option>
								<option value="05">Maio</option>
								<option value="06">Junho</option>
								<option value="07">Julho</option>
								<option value="08">Agosto</option>
								<option value="09">Setembro</option>
								<option value="10">Outubro</option>
								<option value="11">Novembro</option>
								<option value="12">Dezembro</option>                
						</select>
				</H5>
			
		</label> 
         
    </div>
	<? include "footer.php" ?>
</form>
