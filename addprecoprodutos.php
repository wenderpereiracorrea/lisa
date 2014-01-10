<?
if(isset($_POST["txtfichaproduto"])) {
 $_SESSION["Ficha"] = $_POST["txtfichaproduto"];
}
include "conexao.php";
@session_start(); // Inicializa a sessão
connect();
$idprocesso = isset( $_GET['idprocesso'] ) ? $_GET['idprocesso'] : 'valor_padrao';
$produto = isset( $_GET['produto'] ) ? $_GET['produto'] : 'valor_padrao';
$idprecoproduto = isset( $_GET['idprecoproduto'] ) ? $_GET['idprecoproduto'] : 'valor_padrao';
$txtcodempenho = isset( $_POST['txtcodempenho'] ) ? $_POST['txtcodempenho'] : '';
$txtcodproduto_post = isset( $_POST['cmbcategoriaprodutos'] ) ? $_POST['cmbcategoriaprodutos'] : 'valor_padrao';
$data = date('Y-m-d');
?>
<!--======================================================================
    BOTÃO SUPERIOR DO FORMULARIO
    ===================================================================-->
    <div class="btn-group">
     <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
     Ação
     <span class="caret"></span>
     </a>
     <ul class="dropdown-menu">
     <li><a href="precoproduto.php" ><i class="icon-plus icon-white"></i> Produtos </a></li>
     </ul>
     </div>
	<?
	if ( $txtcodproduto_post != NULL){
	$sql = "select * from produto as produt
	WHERE idproduto = '$txtcodproduto_post'
	";
	mysql_query("SET NAMES 'utf8'");
	mysql_query('SET character_set_connection=utf8');
	mysql_query('SET character_set_client=utf8');
	mysql_query('SET character_set_results=utf8');			
	$buscaprodutospreco = mysql_query($sql) or die("Erro: " . mysql_error());
	while ($array_exibir = mysql_fetch_array($buscaprodutospreco)) 
	 {
	$txtfichaproduto = ($array_exibir['idproduto']);
	$txtfichaproduto2 = ($array_exibir['idproduto']);
	$txtcodproduto = ($array_exibir['codproduto']);
	$txtnomeproduto= ($array_exibir['nome']);
	 }
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
<form name="form1" id="form1" method="post" action="dao/preprodutoinsert.php">
<!--=============================================================
	ADICIONADO PRODUTOS
	=============================================================-->
	<div class="form-actions" id="formalarioadicionaproduto" name="formalarioadicionaproduto">
	<input type="hidden" name="txtcodempenho" value="<?php echo $txtcodempenho;?>" />
	<input type="hidden" name="txtcmbcategoria" value="<?php echo $txtcodproduto_post;?>" />
		<fieldset>
			<div class="span6">
			<H5><i class="icon-barcode"></i> Lançamento Preço de Produto</H5> 
				<label> Empenho Nº: <? echo $txtcodempenho; ?> </label>
				<label>Ficha</label> 
				<input class="validate[required,custom[number],minSize[1]]"
				name="txtfichaproduto" value="<?php echo $txtfichaproduto;?>" id="idtxtfichaproduto" type="text"
				placeholder="Numero da ficha" class="span10"> 
				<label>Nome do Produto</label> 
                                <input type="hidden" name="txtcodproduto" value="<?php echo $txtcodproduto;?>" />
                                <input value="<?php echo $txtnomeproduto;?>" class="validate[required,minSize[4]]" name="txtnomeproduto"
				id="idtxtcodproduto" type="text" placeholder="Nome Produto"
				class="span12">
				<label>Quantidade</label> 
				<input class="validate[required,custom[integer]]" value="<?php echo $txtquantidade;?>" name="txtquantidade"
				id="idtxtquantidade" type="text" placeholder="0"
				class="span10">
				<label>Preço</label> <input
				class="validate[required]" value="<?php echo $txtpreco;?>"
				name="txtpreco" id="idtxtpreco" type="text"
				placeholder="0" class="span10">
				<div class="form-actions">
				   <? if(empty($txtquantidade) and empty($txtpreco)) {?>
						<button type="submit" id="idinserir" name="inserir" value="inserir" class="btn btn-success"> <i class="icon-plus icon-white"></i> salvar </button>
					<? }else{ ?>
						<button type="submit" name="atualizar" id="idatualizar" value="atualizar" class="btn btn-info"> <i class="icon-refresh icon-white"></i> atualizar</button>
					<? } ?>
			   </div>              
			</div>
			<div class="alert-error" id="resposta"></div>
		</fieldset>
<!--=============================================================================
    PREÇOS PARA OS PRODUTOS
    ==========================================================================-->
    <fieldset>
    <div class="input-append">
    <legend>Preços do Produto</legend> 
	
   </fieldset>
   <div id="mensagens"></div>
</div>
</form>
<script src="bootstrap/js/bootstrap-dropdown.js"></script>
</body>
</html>