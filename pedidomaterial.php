<?
if(empty($_GET["idprecoproduto"])) {
}else{
$idprecoproduto = ($_GET["idprecoproduto"]);
}
?>
<?
include "conexao.php";
@session_start(); // Inicializa a sessão
$_SESSION["Ficha"] = $_POST["txtfichaproduto"];
connect();
?>
<!--======================================================================
    BOTÃO SUPERIOR DO FORMULARIO
    ===================================================================-->
		<ul class="nav nav-tabs">
		<li>
		<a href="listagemdepedidos.php">Listagem Pedidos</a>
		</li>
		<li class="active"><a href="pedidomaterial.php">Gerar Pedido</a></li>
		<li><a href="movimentacao.php">Baixa Produtos</a></li>
		</ul>
        <?
	$sql = "SELECT *
        FROM precoproduto AS preprod, produto AS produt, categoria AS categ
        WHERE preprod.produto_idproduto = produt.idproduto
        AND preprod.produto_codproduto = categ.codcategoria
        AND idprecoproduto = '$idprecoproduto'
        ";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');			
        $Resultadoprecoproduto = mysql_query($sql) or die("Erro: " . mysql_error());
        while ($array_exibir = mysql_fetch_array($Resultadoprecoproduto)) 
        {
            $txtnomesolicitante= ($array_exibir['nome']);
            $txtnumeropedido = ($array_exibir['idproduto']);
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
<form name="form1" id="form1" method="post" action="dao/pedidomaterialinsert.php">
<!--=============================================================
    ADICIONADO PRODUTOS
    =============================================================-->
	<div class="form-actions" id="formalarioadicionaproduto" name="formalarioadicionaproduto">
    <fieldset>
        <div class="span6">
        <H5>Criar Pedido de Material</H5> 
        <label>Numero do pedido</label> 
        <input class="validate[required,custom[number],minSize[1]]"
        name="txtnumeropedido" value="<?php echo $txtnumeropedido;?>" id="idtxtnumeropedido" type="text"
        placeholder="Numero da Pedido" class="span10"> 
        <label id="lblpesquisaprodutos">Setor</label>
     <!--==============================================================================
        COMBO-BOX COM OS PEDIDOS EM ABERTO
        ===========================================================================-->
       <select name="cmbcategoria" id="idcmbcategoria">
       <option value=""></option>
       <?
       $sqlResultadopedido = "
       SELECT * FROM setor where ativo='1'";
       mysql_query("SET NAMES 'utf8'");
       mysql_query('SET character_set_connection=utf8');
       mysql_query('SET character_set_client=utf8');
       mysql_query('SET character_set_results=utf8');
       $Resultadopedido = mysql_query($sqlResultadopedido) or die("Erro: " . mysql_error());
       $i=0;
       while ($array_exibir = mysql_fetch_array($Resultadopedido))
       {
         ?>
         <option value="<?echo $array_exibir['codsetor']?>">
         <? echo strtoupper($array_exibir['nomesetor'])?>
         </option>
        <? $i++;  } ?>
        </select>
        <label>Solicitante</label> 
        <input	value="<?php echo $txtnomesolicitante;?>" class="validate[required,minSize[4]]" name="txtnomesolicitante"
       id="idtxtnomesolicitante" type="text" placeholder="Nome Solicitante" class="span12">
        <div class="form-actions">
			<? if(empty($_GET["G_idpedido"])) {?>
			<button type="submit" id="idinserir" name="inserir" value="inserir" class="btn btn-success"> <i class="icon-plus icon-white"></i> salvar </button>
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