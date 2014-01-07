<?	
include "conexao.php";
@session_start(); // Inicializa a sessão
connect();
$date = date("d/m/y");
$hora = date("H:i");
if(empty($_GET["idprocesso"])) {
}else{
	$idprocesso = ($_GET["idprocesso"]);
}
?>
		<ul class="nav nav-tabs">
		<li><a href="listagemproduto.php">Listagem Produto</a></li>
		<li><a href="produtogrupo.php">Alterar Grupo do Produto</a></li>
		<li class="active"><a href="addprodutos.php">Adicionar grupo de Produto</a></li>
		</ul>
		<div class="btn-group">
		<a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
		Ação
		<span class="caret"></span>
		</a>
		<ul class="dropdown-menu">
			<li><a href="addprodutos.php"><i class="icon-plus icon-white"></i> Novo Produto </a></li>
			<li><a href="produtos.php" ><i class="icon-plus icon-white"></i> Produtos </a></li>
		</ul>
		</div>
		<? if(empty($_GET["idprocesso"])) {?>
		
		<? }else{ ?>
			<!-- Desenvolvedor -->			
			<? if ($_SESSION["tipousuario"] == '1') { ?>	
			<? echo "disponivel somente para desenvolvedor" ?>
			<div class="btn-group">
			<a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
			Produto 
			<span class="caret"></span>
			</a>
			<ul class="dropdown-menu">
				<li><a href="addprecoprodutos.php?produto=<? echo $idprocesso ?>"><i class="icon-plus icon-white"></i>Adicionar Preço </a></li>
			</ul>
			</div>
			<? } ?>	<!-- FIM Desenvolvedor -->			
		<? } ?>
		<?
		if(isset($_POST["txtfichaproduto"])) {
		 $_SESSION["Ficha"] = $_POST["txtfichaproduto"];
		}
		?>
<?
	$sql = "SELECT prod.idproduto,prod.nome,prod.quantidademinima,prod.quantidademaxima,
			prod.descricao,categ.codgrupo,categ.codcategoria,categ.nome as nomecategoria,
			unimed.codunidademedida,unimed.medida
			FROM produto as prod,categoria as categ,unidademedida as unimed
			where idproduto = '$idprocesso'
			and
			prod.categoria_codcategoria = categ.codcategoria
			and
			prod.unidademedida_codunidademedida = unimed.codunidademedida
			";
		mysql_query("SET NAMES 'utf8'");
	    mysql_query('SET character_set_connection=utf8');
	    mysql_query('SET character_set_client=utf8');
	    mysql_query('SET character_set_results=utf8');			
	$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
	while ($array_exibir = mysql_fetch_array($Resultado)) 
	{
		$txtfichaproduto = ($array_exibir['idproduto']);
		$txtnomeproduto = ($array_exibir['nome']);
		$txtquantidademinima = ($array_exibir['quantidademinima']);
		$txtquantidademaxima = ($array_exibir['quantidademaxima']);
		$cmbcategoria = ($array_exibir['nomecategoria']);
		$cmbcategoriacodcategoria = ($array_exibir['codcategoria']);
		$cmbunidademedida = ($array_exibir['medida']);
		$cmbunidademedidamedida = ($array_exibir['codunidademedida']);
		$txtdescricao = ($array_exibir['descricao']);
	}
?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="bootstrap/css/docs.css" rel="stylesheet">
<link href="bootstrap/js/google-code-prettify/prettify.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="assets/js/html5shiv.js"></script>
<![endif]-->
<!-- jQUERY PARA VALIDAÇÃO-->
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" />
<link rel="stylesheet" href="css/template.css" type="text/css" />
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="js/languages/jquery.validationEngine-pt_BR.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/ico/favicon.png">
</head>
<script>
	    jQuery(document).ready(function () {  // binds form submission and fields to the validation engine
	    jQuery("#form1").validationEngine();
		});
</script>
<body>
<form name="form1" id="form1" method="post" action="dao/produtoinsert.php">
<!--=============================================================
	ADICIONADO PRODUTOS
	=============================================================-->
	<div class="form-actions" id="formalarioadicionaproduto" name="formalarioadicionaproduto">
		<fieldset>
			<div class="span6">
			<H5>INCLUIR E ALTERAR PRODUTO</H5> 
				<label>Ficha</label> 
				<input class="validate[required,custom[number],minSize[1]]"
					name="txtfichaproduto" value="<?php echo $txtfichaproduto;?>" id="idtxtfichaproduto" type="text"
					placeholder="Numero da ficha" class="span10"> 
				<label>Nome</label> 
				<input	value="<?php echo $txtnomeproduto;?>" class="validate[required,minSize[4]]" name="txtnomeproduto"
					id="idtxtnomeproduto" type="text" placeholder="Nome Produto"
					class="span10">
	
				<label>Quantidade minima</label> 
				<input class="validate[custom[number]]" value="<?php echo $txtquantidademinima;?>" name="txtquantidademinima"
					id="idtxtquantidademinima" type="text" placeholder="0"
					class="span10">
		
				<label>Quantidade maxima</label> <input
					class="validate[custom[number]]" value="<?php echo $txtquantidademaxima;?>"
					name="txtquantidademaxima" id="idtxtquantidademaxima" type="text"
					placeholder="0" class="span10">
		
			
			<label>Categoria</label>
			<div class="input-append">
<!--=============================================================
	COMBO BOX DINAMICO
	=============================================================-->
				<select class="validate[required]" name="cmbcategoria"
					id="idcmbcategoria">
					<option value="<?php echo $cmbcategoriacodcategoria;?>">
					<? echo $cmbcategoria ?>
					</option>
					<?
					$sql = "SELECT * FROM categoria order by nome desc;";
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
					<option value="<?echo $array_exibir['codcategoria']?>">
					<? echo strtoupper($array_exibir['nome'])?>
					</option>
					<?
					$i++;
					}
					?>
				</select>
			</div>
			
			<label>Unidade medida</label>
			<div class="input-append">
<!--=============================================================
	COMBO BOX DINAMICO
	=============================================================-->
				<select class="validate[required]" name="cmbunidademedida"
					id="idcmbunidademedida">
					<option value="<?php echo $cmbunidademedidamedida;?>">
					<? echo $cmbunidademedida ?>
					</option>
					<?
					$sql = "SELECT * FROM unidademedida order by medida desc;";
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
						<option value="<?echo $array_exibir['codunidademedida']?>">
						<? echo strtoupper($array_exibir['medida'])?>
						</option>
						<?
						$i++;
					}
					?>
				</select>
			</div>
			
			
			<label>Descrição</label>
			<textarea name"txtdescricao" value="<?php echo $txtdescricao;?>" id="idtxtdescricao" rows="3" class="span10"></textarea>
			    <select name="cmbativo" id="Select1">
				<option value="1"> Ativo</option>
				<option value="0"> Inativo</option>
				</select>
			<div class="form-actions">
			<? if(empty($_GET["idprocesso"])) {?>
			<button type="submit" id="idinserir" name="inserir" value="inserir" class="btn btn-success">
				<i class="icon-plus icon-white"></i> salvar
			</button>
			<? }else{ ?>
			<button type="submit" name="atualizar" id="idatualizar" value="atualizar" class="btn btn-info"> <i class="icon-refresh icon-white"></i> atualizar</button>
			<? } ?>
		   </div>  
		</div>
			<div class="alert-error" id="resposta"></div>
		</fieldset>
		<div id="mensagens"></div>
	</div>
</form>
   <script src="bootstrap/js/bootstrap-dropdown.js"></script>
</body>

</html>

