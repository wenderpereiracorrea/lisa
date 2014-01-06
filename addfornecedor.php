<?
$data = date('Y-m-d H:i:s');  
$fornecedor = isset( $_GET['fornecedor'] ) ? $_GET['fornecedor'] : '-1';
?>
<?
include "conexao.php";
@session_start(); // Inicializa a sessão
connect();
?>
<!--======================================================================
    BOTÃO SUPERIOR DO FORMULARIO
    ===================================================================-->
    <div class="btn-group">
     <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
     Ação
     <span class="caret"></span>
     </a>
     <ul class="dropdown-menu">
     <li><a href="listagemfornecedor.php" ><i class="icon-plus icon-white"></i> Listagem fornecedor </a></li>
     </ul>
    </div>
        <?
          $sql = "SELECT * FROM fornecedor as forn,opcao as opr
		  Where codfornecedor = '$fornecedor' and
		  forn.ativo = opr.idopcao";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');			
        $resultadofornecedor = mysql_query($sql);
		include "validaerrobanco.php";             
        while ($array_exibir = mysql_fetch_array($resultadofornecedor)) 
        {
            $txtcodfornecedor= ($array_exibir['codfornecedor']);
            $txtnomefornecedor = ($array_exibir['nome']);
			$txttelefone = ($array_exibir['tel']);
			$txtcnpj = ($array_exibir['cnpj']);
			$txtendereco = ($array_exibir['end']);
			$txtemail= ($array_exibir['email']);
			$txtnumero = ($array_exibir['numero']);
			$txtobs = ($array_exibir['obs']);
			$txtdata = ($array_exibir['data']);
			$txtativo = ($array_exibir['ativo']);
            $txtativonome = ($array_exibir['nome']);
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
<form name="form1" id="form1" method="post" action="dao/fornecedorinsert.php">
<!--=============================================================
    ADICIONADO PRODUTOS
    =============================================================-->
	<div class="form-actions" id="formalarioadicionaproduto" name="formalarioadicionaproduto">
    <fieldset>
        <div class="span6">
        <H5>FORNECEDOR<?php echo ":".$txtcodfornecedor;?></H5> 
        <label>Nome</label> 
        <input type="hidden" name="txtcodfornecedor" value="<?php echo $txtcodfornecedor;?>" />
		<input class="validate[required]"
        name="txtnomefornecedor" value="<?php echo $txtnomefornecedor;?>" id="idtxtnomefornecedor" type="text"
        placeholder="Nome Fornecedor" class="span10">
		<label>Telefone</label> 
        <input	value="<?php echo $txttelefone;?>" class="validate[required]" name="txttelefone"
        id="idtxttelefone" type="text" placeholder="Telefone" class="span12">
	   
	    <label>CNPJ</label> 
        <input	value="<?php echo $txtcnpj;?>" class="validate[required]" name="txtcnpj"
        id="idtxtcnpj" type="text" placeholder="Telefone" class="span12" >
		
		<label>Endereco</label> 
        <input	value="<?php echo $txtendereco;?>" class="" name="txtendereco"
        id="idtxtendereco" type="text" placeholder="Endereço" class="span12">
		
        <label>Email</label> 
        <input	value="<?php echo $txtemail;?>" class="text-input" name="txtemail"
       id="idtxtemail" type="text" placeholder="Email do usuário" class="span12">
	   
	   <label>Numero</label> 
        <input	value="<?php echo $txtnumero;?>" class="" name="txtnumero"
        id="idtxtnumero" type="text" placeholder="Numero" class="span12">
		
		<label>Obs</label> 
        <input	value="<?php echo $txtobs;?>" class="" name="txtobs"
        id="idtxtobs" type="text" placeholder="Observação" class="span12">
		
        <br />
        <label>status</label>
		<select class="validate[required]" name="cmbativo"
					id="Select1">
					<option value="<?php echo $txtativo;?>">
					<? echo $txtativonome ?>
					</option>
					<?
					$sql = "SELECT * FROM opcao where categoria = '1'";
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
            <br />
	
        <div class="form-actions">
            <? if(empty($_GET["fornecedor"])) {?>
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