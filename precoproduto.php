<? include "header.php"; 
include "conexao.php";
connect();
?>
<!--=============================================================
	BUSCA AJAX
	=============================================================-->
<script	src="view/buscaprodutopreco.js" type="text/javascript"></script>
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
<form name="form1" id="form1" method="post" action="dao/produtoinsert.php">
<!--=============================================================
	BUSCA DE PRODUTOS 
	=============================================================-->
	<div class="form-actions">
		<fieldset>
			<legend>
				<i class="icon-barcode"></i> LANÇAMENTO DE PREÇOS
			</legend>
			<label id="lblpesquisaprodutos"> LANÇAMENTO DE PREÇOS</label>
			<div class="input-append">
				<input type="text" id="pesquisaprodutos" accesskey="p"	class="span7" name="pesquisaprodutos" onkeyup="buscaInstantanea();"
					placeholder="Digite o nome do produto...">
				
				</button>
			</div>
			 <div class="input-append" >
             <div id="resultadoBusca"></div>
			 <label> Preço Produto cadastrado</label>
			 <select class="span12" name="cmbcategoria" id="idcmbcategoria" onchange="location.href='addprecoprodutos.php?idprecoproduto='+this.value;">
				<option value=""><? //echo $unidadeFederativa ?></option>
				<?
					$sqlcmbcategoria = "SELECT * 
                                                FROM precoproduto as preprod,produto as produt
                                                WHERE preprod. produto_idproduto = produt.idproduto
                                                ";
                                            mysql_query("SET NAMES 'utf8'");
                                            mysql_query('SET character_set_connection=utf8');
                                            mysql_query('SET character_set_client=utf8');
                                            mysql_query('SET character_set_results=utf8');
					   //$Resultadocmbcategoria = mysql_query($sqlcmbcategoria) or die("Erro: " . mysql_error());
					   $i=0;
					   while ($array_exibir = mysql_fetch_array($Resultadocmbcategoria)) 
					   {
						?>
						<option value="<?echo $array_exibir['idprecoproduto']?>">
						<? echo strtoupper($array_exibir['nome'])?>
                                                ... R$ 
                                                <? echo strtoupper($array_exibir['preco'])?>
                                                ... Estoque:
                                                <? echo strtoupper($array_exibir['quantidade'])?>
						</option>
                                                <?
						$i++;
                                           }
				?>
			</select>
			</div>
			<div class="input-append" >
			 <label> Preço Produtos</label>
			 <select class="span12" name="cmbcategoria" id="idcmbcategoria" onchange="location.href='addprecoprodutos.php?produto='+this.value;">
				<option value=""><? //echo $unidadeFederativa ?></option>
				<?
					$sqlcmbcategoria = "SELECT * 
                                                FROM produto as produt
                                              ";
                                            mysql_query("SET NAMES 'utf8'");
                                            mysql_query('SET character_set_connection=utf8');
                                            mysql_query('SET character_set_client=utf8');
                                            mysql_query('SET character_set_results=utf8');
					   $Resultadocmbcategoria = mysql_query($sqlcmbcategoria) or die("Erro: " . mysql_error());
					   $i=0;
					   while ($array_exibir = mysql_fetch_array($Resultadocmbcategoria)) 
					   {
						?>
						<option value="<?echo $array_exibir['idproduto']?>">
						<? echo strtoupper($array_exibir['nome'])?>
						</option>
                                                <?
						$i++;
                                           }
				?>
			</select>
			</div>
			<span class="help-block">Busca interativa que exibe os produtos	cadastrados</span>
			
	</div>
	</fieldset>
	</div>
	<? include "footer.php" ?>
</form>
