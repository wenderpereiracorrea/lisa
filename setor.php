<? include "header.php"; 
include "conexao.php";
connect();
?>

<!--=============================================================
	BUSCA AJAX
	=============================================================-->
<script	src="view/buscaprodutogrupo.js" type="text/javascript"></script>
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
<form name="form1" id="form1" method="post"	action="dao/produtogrupoinsert.php">
<!--=============================================================
	BUSCA DE PRODUTOS 
	=============================================================-->
    <ul class="nav nav-tabs">
    <li>
    <a href="listagemsetor.php">Listagem Setor</a>
    </li>
    <li><a href="addsetor.php">Cadastro de Setor</a></li>
	<li class="active"><a href="setor.php">Busca por Setor</a></li>
	</ul>
    <div class="form-actions">
		<fieldset>
			<legend>
				<i class="icon-flag"></i> Listagem de Setor
			</legend>
			<label id="lblpesquisagrupo">Listagem de Setor</label>

            <div class="input-append" >
			<select class="span12" name="cmbativo" id="idcmbativo" onchange="location.href='addsetor.php?idsetor='+this.value;">
				<option value=""><? //echo $unidadeFederativa ?></option>
				<?
		    		$sql = "SELECT * FROM
					setor as str
					
					";

					mysql_query("SET NAMES 'utf8'");
					mysql_query('SET character_set_connection=utf8');
					mysql_query('SET character_set_client=utf8');
					mysql_query('SET character_set_results=utf8');
					   $Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
					   $i=0;
					   $data = array();
					   while ($array_exibir = mysql_fetch_array($Resultado)) 
					   {
						?>
						<option value="<?echo $array_exibir['codsetor']?>">
						<? echo ($array_exibir['nomesetor'])?>
						
						</option><?
						$i++;
				   }
				?>
			</select>
			</div>
			<span class="help-block">Busca interativa que exibe os Grupos
				cadastrados</span>
			<div id="resultadoBusca"></div>
	</div>
	</fieldset>
	<script src="bootstrap/js/bootstrap-dropdown.js"></script>
	<? include "footer.php" ?>
	</div>
</form>

