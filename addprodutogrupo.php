<?
if(empty($_GET["idprocesso"])) {
}else{
	$idprocesso = ($_GET["idprocesso"]);
}
	?>
		<div class="btn-group">
		<a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
		Ação
		<span class="caret"></span>
		</a>
		<ul class="dropdown-menu">
			<li><a href="addprodutogrupo.php"><i class="icon-plus icon-white"></i> Novo Grupo </a></li>
			<li><a href="produtogrupo.php" ><i class="icon-plus icon-white"></i> Grupos </a></li>
		</ul>
		</div>
	<?
include "conexao.php";
@session_start(); // Inicializa a sessão
connect();
$date = date("d/m/y");
$hora = date("H:i");
?>
<?
	$sql = "SELECT 
			categ.codcategoria,categ.codgrupo,categ.nome,categ.ativo,
			categ.descricao
			FROM categoria as categ
			where categ.codcategoria = '$idprocesso'
			";
		mysql_query("SET NAMES 'utf8'");
	    mysql_query('SET character_set_connection=utf8');
	    mysql_query('SET character_set_client=utf8');
	    mysql_query('SET character_set_results=utf8');			
	$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
	while ($array_exibir = mysql_fetch_array($Resultado)) 
	{
		$txtfichaproduto = ($array_exibir['codcategoria']);
		$txtnomegrupo = ($array_exibir['nome']);
		$txtcodgrupo = ($array_exibir['codgrupo']);
		$txtativo= ($array_exibir['ativoativo']);
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
<link href="bootstrap/js/google-code-prettify/prettify.css"
rel="stylesheet">
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
<link rel="apple-touch-icon-precomposed" sizes="144x144"
href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
href="assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/ico/favicon.png">
</head>
<script>
	    jQuery(document).ready(function () {  // binds form submission and fields to the validation engine
	    jQuery("#form1").validationEngine();
		});
</script>
<body>
<form name="form1" id="form1" method="post" action="dao/produtogrupoinsert.php">
<!--=============================================================
	ADICIONADO PRODUTOS
	=============================================================-->
	<div class="form-actions" id="formalarioadicionaproduto" name="formalarioadicionaproduto">
		<fieldset>
			<div class="span6">
			<H5>INCLUIR E ALTERAR GRUPO</H5> 
				<label>CODIGO GRUPO</label> 
				<input class="validate[required]"
					name="txtcodgrupo" value="<?php echo $txtcodgrupo;?>" id="idtxtcodgrupo" type="text"
					placeholder="Numero do GRUPO" class="span10"> 
				<label>Nome</label> 
				<input	value="<?php echo $txtnomegrupo;?>" class="span 5 validate[required,minSize[4]]" name="txtnomegrupo"
					id="idtxtnomeGrupo" type="text" placeholder="Nome Grupo"
					class="span10">
		
			
				<label>Descrição</label>
				<textarea name"txtdescricao" value="<?php echo $txtdescricao;?>" id="idtxtdescricao" rows="3"
					class="span10"></textarea>
			<label class="radio">
	       <select name="cmbativo" id="Select1">
			<option value="1"> Ativo</option>
			<option value="0"> Inativo</option>
			</select>

			</br>
			</br>
			<div class="span6">
				<button type="submit" name="atualizar" value="atualizar"
					class="btn btn-info">
					<i class="icon-refresh icon-white"></i> atualizar
				</button>
				<button type="submit" id="idEnviar" name="salvar" value="salvar"
					class="btn btn-success">
					<i class="icon-plus icon-white"></i> salvar
				</button>
			</div>
			<div class="alert-error" id="resposta"></div>
		</fieldset>
	</div>
</form>
<script>
jQuery(document).ready(function () {
// binds form submission and fields to the validation engine
jQuery("#form1").validationEngine();
});
</script>
    
    <script src="bootstrap/js/bootstrap-dropdown.js"></script>
</body>

</html>

