<? 
include "header.php"; 
include "conexao.php";
connect();
session_start(); // Inicializa a sess�o
$txtcodempenho = isset( $_POST['txtcodempenho'] ) ? $_POST['txtcodempenho'] : 'valor_padrao';
$cmbcategoria = isset( $_POST['cmbcategoria'] ) ? $_POST['cmbcategoria'] : 'valor_padrao';
?>
<!--=============================================================
	BUSCA AJAX
	=============================================================-->
<script	src="view/buscaprodutos.js" type="text/javascript"></script>
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
<form name="form1" id="form1" method="post" action="produtos.php">
<!--=============================================================
	BUSCA DE PRODUTOS 
	=============================================================-->
	<ul class="nav nav-tabs">
     <li><a href="listagemproduto.php">Listagem Produto</a> </li>
     <li class="active"><a href="produtos.php">Produtos</a></li>
	 <li><a href="produtogrupo.php">Alterar Grupo do Produto</a></li>
	 <li><a href="addprodutos.php">Adicionar grupo de Produto</a></li>
	</ul>
	<div class="form-actions">
	<fieldset>
	<input type="hidden" name="txtcodempenho" value="<? echo $txtcodempenho;?>" />
	<input type="hidden" name="txtcmbcategoria" value="<? echo $cmbcategoria;?>" />
		<legend>
		  <i class="icon-tag"></i> Listagem de Produtos
		</legend>
			<?
			if(empty($_GET["g_idproduto"])) {
			}else{
			$g_idproduto = ($_GET["g_idproduto"]);
			}
			?>
			<?
			$sql = "SELECT categ.codcategoria,COUNT(categ.nome) as qtd, categ.nome
			FROM 
			categoria as categ,
			produto as prod
			where categ.codcategoria = '$cmbcategoria'  and
			categ.codcategoria = prod.categoria_codcategoria
			GROUP by categ.nome order by qtd desc";

			mysql_query("SET NAMES 'utf8'");
			mysql_query('SET character_set_connection=utf8');
			mysql_query('SET character_set_client=utf8');
			mysql_query('SET character_set_results=utf8');
			$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
			while ($array_exibir = mysql_fetch_array($Resultado)) 
			{
			 $nomecategoria = strtoupper($array_exibir['nome']);
                         $i++;
	  	        }
			?>                  
                       <label id="Label1">Listagem de Categorias</label>
			<div class="input-append" >
			<select class="span12" name="cmbcategoria" id="Select1" onchange="this.form.submit()">
                        <option value="<? echo $cmbcategoria; ?>" /><? echo $nomecategoria; ?></option>
			<?
			$sql = "SELECT codgrupo,categ.codcategoria,COUNT(categ.nome) as qtd, categ.nome
	                FROM 
		                 categoria as categ,
		                 produto as prod
				 where 
				 categ.codcategoria = prod.categoria_codcategoria
				 GROUP by categ.codgrupo order by codgrupo asc";
					mysql_query("SET NAMES 'utf8'");
					mysql_query('SET character_set_connection=utf8');
					mysql_query('SET character_set_client=utf8');
					mysql_query('SET character_set_results=utf8');
					$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
				        while ($array_exibir = mysql_fetch_array($Resultado)) 
				        {
					?>
				        <option value="<?echo $array_exibir['codcategoria']?>">
					<? echo strtoupper($array_exibir['codgrupo'])?> --
				        <? echo strtoupper($array_exibir['nome'])?>
                        -- Produtos:<? echo strtoupper($array_exibir['qtd'])?>
                          </option>
                                 <?
					$i++;
			                }
				        ?>
			</select>
			</div>
			</form>			
            <!-- ===============================================================
				 Form2
				 ===============================================================-->
			<form name="form2" id="form2" method="post" action="addprecoprodutos.php">
			<input type="hidden" name="txtcodempenho" value="<?php echo $txtcodempenho;?>" />
		    <label id="lblpesquisaprodutos">Listagem de Produtos</label>
			<div class="input-append" >
			<select class="span12" name="cmbcategoriaprodutos" id="idcmbcategoria" onchange="this.form.submit()">
                <option value=""><? $g_idproduto ?></option>
				<?  $sql = "SELECT * FROM produto
                                     Where categoria_codcategoria ='$cmbcategoria'
                                     order by nome desc;";
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
				 <option value="<?echo $array_exibir['idproduto']?>">
				 <? echo strtoupper($array_exibir['nome'])?> ----><?echo $array_exibir['idproduto']?>
				 </option><?
				$i++;
				}
				?>
			</select>
			</div>
			</form>			
	<!--
			<span class="help-block">Busca interativa que exibe os produtos
				cadastrados</span>
			<div id="resultadoBusca"></div>
	-->
	</div>
	</fieldset>
	<script src="bootstrap/js/bootstrap-dropdown.js"></script>
	</div>
	<? include "footer.php" ?>

