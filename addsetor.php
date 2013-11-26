<?	
	
	if(isset($_GET["idsetor"])) {
		$idsetor = ($_GET["idsetor"]);
   }
?>
    <ul class="nav nav-tabs">
    <li>
    <a href="listagemsetor.php">Listagem Setor</a>
    </li>
    <li class="active"><a href="addsetor.php">Cadastro de Setor</a></li>
	<li><a href="setor.php">Busca por Setor</a></li>
	</ul>
    </div>
	<?
include "conexao.php";
@session_start(); // Inicializa a sessão
connect();
?>
<?
	$sql = "SELECT * FROM setor as setr,opcao as opc
			where setr.ativo = opc.idopcao and
			setr.codsetor = '$idsetor'
			";
			
			
		mysql_query("SET NAMES 'utf8'");
	    mysql_query('SET character_set_connection=utf8');
	    mysql_query('SET character_set_client=utf8');
	    mysql_query('SET character_set_results=utf8');			
	$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
	while ($array_exibir = mysql_fetch_array($Resultado)) 
	{
		//$txtfichaproduto = ($array_exibir['codsetor']);
		$txtnomesetor = ($array_exibir['nomesetor']);
		$txtativo= ($array_exibir['ativo']);
		$txtativonome= ($array_exibir['nome']);
		$txtdescricao = ($array_exibir['data']);
        $txtcodsetor = ($array_exibir['codsetor']);
		$txtsigla = ($array_exibir['setor']);
		
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
<form name="form1" id="form1" method="post" action="dao/setorinsert.php">
<!--=============================================================
	ADICIONADO PRODUTOS
	=============================================================-->
	<div class="form-actions" id="formalarioadicionaproduto" name="formalarioadicionaproduto">
		<fieldset>
			<div class="span6">
			<H5>INCLUIR E ALTERAR SETOR</H5> 
				&nbsp;<label>Nome</label> 
                <input type="hidden" name="txtcodsetor" value="<?php echo $txtcodsetor;?>" />
				<input	value="<?php echo $txtnomesetor;?>" class="span 5 validate[required,minSize[4]]" name="txtnomesetor"
					id="idtxtnomeGrupo" type="text" placeholder="Nome Setor"
					class="span10">
				<br/>
				<input	value="<?php echo $txtsigla;?>" class="span 5 validate[required,MaxSize[5]]" name="txtsigla"
					id="idtxtsigla" type="text" placeholder="Sigla"
					class="span10">
			<br />
            	
			<select class="validate[required]" name="cmbativo"
					id="Select1">
					<option value="<?php echo $txtativo;?>">
					<? echo $txtativonome ?>
					</option>
					<?
					//$sql = "SELECT * FROM opcao where categoria = '1'";
					$sql = "SELECT * FROM opcao";
					mysql_query("SET NAMES 'utf8'");
					mysql_query('SET character_set_connection=utf8');
					mysql_query('SET character_set_client=utf8');
					mysql_query('SET character_set_results=utf8');
					$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
					while ($array_exibir = mysql_fetch_array($Resultado))
					{
					?>
					<option value="<?echo $array_exibir['idopcao']?>">
					<? echo strtoupper($array_exibir['nome'])?>
					</option>
					<?
					$i++;
					}
					?>
				</select>
			</br>
			</br>
			<div class="span6">
			<? if(empty($_GET["idsetor"])) {?>
			<button type="submit" id="idEnviar" name="salvar" value="salvar" class="btn btn-success"><i class="icon-plus icon-white"></i> salvar </button>
			<? }else{ ?>
			<button type="submit" name="atualizar" value="atualizar" class="btn btn-info"><i class="icon-refresh icon-white"></i> atualizar	</button>
			<? } ?>
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

