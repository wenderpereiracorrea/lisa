<?
$data = date('Y-m-d H:i:s');  
$empenho = isset( $_GET['idempenho'] ) ? $_GET['idempenho'] : '-1';
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
    <a href="listagemempenho.php">Listagem Empenho</a>
    </li>
    <li class="active"><a href="addempenho.php">Adiciona Empenho</a></li>
	
	</ul>
        <?
		  $sql = "SELECT 
				empe.codempenho,
				empe.empenho,
				empe.data,
				empe.ativo,
				forn.nome as nomefornecedor,
				empe.fornecedor_codfornecedor
					FROM
						  empenho as empe,
						  opcao as opr,
						  fornecedor as forn
					 where
						codempenho = '1' and 
						empe.ativo = opr.idopcao";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');			
        $Resultadoprecoproduto = mysql_query($sql) or die("Erro: " . mysql_error());
        while ($array_exibir = mysql_fetch_array($Resultadoprecoproduto)) 
        {
            
        $txtcodempenho = ($array_exibir['codempenho']);
        $txtempenho = ($array_exibir['empenho']);
        $txtnomeempenho = ($array_exibir['nome']);
        $txtdata = ($array_exibir['data']);
        $txtativo = ($array_exibir['ativo']);
        $txtativonome = ($array_exibir['nomefornecedor']);
		$txtcodfornecedor = ($array_exibir['fornecedor_codfornecedor']);
            
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
<form name="form1" id="form1" method="post" action="dao/usuarioinsert.php">
<!--=============================================================
    ADICIONADO PRODUTOS
    =============================================================-->
	<div class="form-actions" id="formalarioadicionaproduto" name="formalarioadicionaproduto">
    <fieldset>
        <div class="span6">
        <H5>Empenho <?php echo ":".$txtcodempenho;?></H5> 
        <label>Numero</label> 
        <input type="hidden" name="txtcodempenho" value="<?php echo $txtcodempenho;?>" />
		<input class="validate[required,minSize[6]]"
        name="txtlogin" value="<?php echo $txtempenho;?>" id="idtxtempenho" type="text"
        placeholder="Empenho" class="span10">
        <br />
		<label>Fornecedor</label>
		<select class="validate[required]" name="cmbativo"
					id="Select1">
					<option value="<?php echo $txtcodfornecedor;?>">
					<? echo $txtnome ?>
					</option>
					<?
					$sql = "SELECT * FROM fornecedor where ativo = '1'";
					mysql_query("SET NAMES 'utf8'");
					mysql_query('SET character_set_connection=utf8');
					mysql_query('SET character_set_client=utf8');
					mysql_query('SET character_set_results=utf8');
					$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
					while ($array_exibir = mysql_fetch_array($Resultado))
					{
					?>
					<option value="<?echo $array_exibir['codfornecedor']?>">
					<? echo strtoupper($array_exibir['nome'])?>
					</option>
					<?
					$i++;
					}
					?>
		</select>
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
        
            <? if(empty($_GET["empenho"])) {?>
			<button type="submit" id="idinserir" name="inserir" value="inserir" class="btn btn-success"> <i class="icon-plus icon-white"></i> salvar </button>
			<? }else{ ?>
			<button type="submit" name="atualizar" id="idatualizar" value="atualizar" class="btn btn-info"> <i class="icon-refresh icon-white"></i> atualizar</button>
			<? } ?>
        
	 </div>		
	 </fieldset>
	</form>
	<fieldset>
	
	 <form name="form1" id="form1" method="post" action="produtos.php">
		<div class="form-actions">
		<input type="hidden" name="txtcodempenho" value="<?php echo $txtcodempenho;?>" />
		<button type="submit" id="idinserir" name="inserir" value="inserir" class="btn btn-success"> <i class="icon-plus icon-white"></i> Add preço </button>
        </div>
		<legend><H4><i class="icon-shopping-cart"></i> LISTAGEM DE PRODUTOS</h4></legend>
		<?
       $sqlResultadoprodutospedido = 
									  "SELECT	preprod . *,
									   unimed.medida,
									   produt . *,
									  (preprod.quantidade * preprod.preco) as result
									   
									   FROM
									   precoproduto as preprod,
									   produto as produt,
									   unidademedida as unimed
									   WHERE
									   empenho_codempenho = '$txtcodempenho' and
									   preprod.produto_idproduto = produt.idproduto and
									   produt.unidademedida_codunidademedida  = unimed.codunidademedida
									   order by nome asc";
				mysql_query("SET NAMES 'utf8'");
				mysql_query('SET character_set_connection=utf8');
				mysql_query('SET character_set_client=utf8');
				mysql_query('SET character_set_results=utf8');
				$Resultadoprodutospedido = mysql_query($sqlResultadoprodutospedido) or die("Erro: " . mysql_error());
				$totalconsult = mysql_num_rows($Resultadoprodutospedido);
		if ($totalconsult < 1) {
                ?>
                <!-- total de resultados da consulta -->
                <!--=============================================================
                JS
                =============================================================-->
		<? } elseif ($totalconsult >= 15110) { ?>
			<div class="alert alert-block alert-error fade in">
				<? echo "FAVOR ENTRAR EM CONTATO COM ADMINISTRADOR DO SISTEMA PARA OTIMIZAÇÃO DO BANCO DE DADOS" ?>
			</div>
			<table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="4" cellspacing="4">
                        <tr>
                            <td style="background-color: #049cdb; color: #FFFFFF;"><b>id</b></td>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b>id produto</b></td>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b>medida</b>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b>nome</b></td>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b>quantidade</b>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b>preço</b>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b>
                                <td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Editar</b></td>
								<? if ($_SESSION["tipousuario"] == '1') { ?>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-tash icon-white"></i> Excluir</b></td>
							    <? } ?>
								<? if ($_SESSION["tipousuario"] == '2') { ?>
								<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-tash icon-white"></i> Excluir</b></td>
								<? } ?>
                            </td>
                        </tr>
			<? } else { ?>
				<span class="badge badge-info"><? echo "Total: $totalconsult" ?></span>
				<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
						<tr>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b>id</b></td>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b>id produto</b></td>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b>medida</b>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b>nome</b></td>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b>quantidade</b>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b>preço</b>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-pencil icon-white"></i> Editar</b></td>
							<? if ($_SESSION["tipousuario"] == '1') { ?>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-tash icon-white"></i> Excluir</b></td>
						   <? } ?>
							<? if ($_SESSION["tipousuario"] == '2') { ?>
							<td style="background-color: #049cdb; color: #FFFFFF;"><b><i class="icon-tash icon-white"></i> Excluir</b></td>
						   <? } ?>
						</tr>
				<? } ?>
				<?
				while ($array_exibir = mysql_fetch_array($Resultadoprodutospedido)) {
					$valprod = urlencode($array_exibir['idproduto'])
					?><!-- Inicio da formação dos links para exibir a consulta -->
					<tr>
						<td><label><?php echo $array_exibir['idprecoproduto'] ?></label>
						<td><label><?php echo $array_exibir['produto_idproduto'] ?></label>
						<td><label><?php echo $array_exibir['medida'] ?></label>
						<td><label><?php echo $array_exibir['nome'] ?></label>
						<td><input type="text" class="input-xlarge uneditable-input span2" readonly="true" value="<?php echo $array_exibir['quantidade'] ?>"></td>
						<td><input type="text" class="input-xlarge uneditable-input span2" readonly="true"  value="<?php echo $array_exibir['preco'] ?>"></td>
                         <?php $valor = ($array_exibir['result']); ?>
                         <td><input type="text" class="input-xlarge uneditable-input span2" readonly="true"  value="<?php echo number_format($valor,2,",","."); ?>"></td>
						<td><a href="addprodutos.php?modo=parc&idprocesso=<? echo $valprod ?>&idmovimentacao=<? echo $g_idpedido ?>">
							<i class="icon-pencil"></i> Editar</a>
						</td>
						<? if ($_SESSION["tipousuario"] == '1') { ?>
						<td><a href="dao/removerempenho.php?modo=parc&idproduto=<? echo $valprod ?>&idempenho=<? echo $empenho ?>" onclick="return confirm('Confirma exclusão do registro Id: <?php echo $array_exibir['codusuario'] ?>')"><i class="icon-trash"></i> Excluir</a>
						<? } ?>
						<? if ($_SESSION["tipousuario"] == '2') { ?>
						<td><a href="dao/removerempenho.php?modo=parc&idproduto=<? echo $valprod ?>&idempenho=<? echo $empenho ?>" onclick="return confirm('Confirma exclusão do registro Id: <?php echo $array_exibir['codusuario'] ?>')"><i class="icon-trash"></i> Excluir</a>
						<? } ?>
						</td>
				   </tr>
					<?
					$i++;
				}
		?>

        <div class="alert-error" id="resposta"></div>
		<div id="mensagens"></div>
	 </form>
	</fieldset>
<script src="bootstrap/js/bootstrap-dropdown.js"></script>
</body>
</html>