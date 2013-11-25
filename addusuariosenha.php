<?
    
if(($_GET["idusuario"])=='') {
    $idusuario = -1;
}else{
$idusuario = ($_GET["idusuario"]);
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
    <div class="btn-group">
     <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
     Ação
     <span class="caret"></span>
     </a>
     <ul class="dropdown-menu">
     <li><a href="usuario.php" ><i class="icon-plus icon-white"></i> usuários </a></li>
     </ul>
    </div>
        <?
    	   $sql = "SELECT * FROM setor as seto,usuario as usua
			where seto.codsetor = usua.setor_codsetor and
			usua.codusuario = '$idusuario'";
        
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');			
        $Resultadoprecoproduto = mysql_query($sql) or die("Erro: " . mysql_error());
        while ($array_exibir = mysql_fetch_array($Resultadoprecoproduto)) 
        {
            $txtnomesolicitante= ($array_exibir['nome']);
            $txtcodusuario = ($array_exibir['codusuario']);
			$txtlogin = ($array_exibir['login']);
            $txtsenha = ($array_exibir['senha']);
            $txtsetor = ($array_exibir['nomesetor']);
            $txtcodsetor = ($array_exibir['codsetor']);
            $txtEmail = ($array_exibir['email']);
            $txtativo = ($array_exibir['ativo']);
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
        <H5>Login</H5> 
        <label>Id:<?php echo $txtcodusuario;?></label> 
        <input type="hidden" name="txtcodusuario" value="<?php echo $txtcodusuario;?>" />
		<input class="validate[required,minSize[6]]"
        name="txtlogin" value="<?php echo $txtlogin;?>" id="idtxtlogin" type="text"
        placeholder="Login do usuário" class="span10">
        <label>Senha</label> 
        <input type="password" class="validate[required,minSize[4]]" name="txtsenha"
        id="idtxtsenha" class="span12">   
        
     <!--==============================================================================
        COMBO-BOX COM OS PEDIDOS EM ABERTO
        ===========================================================================-->

        <label>Email</label> 
        <input value="<?php echo $txtEmail;?>" readonly="true" class="input-xlarge uneditable-input" name="txtnomesolicitante"
       id="Text1" type="text" placeholder="Email do usuário" class="span12">
        <br />
        <input type="hidden" name="cmbativo" value="<?php echo $txtativo;?>" />
        <div class="form-actions">
            <button type="submit" name="atualizar" id="idatualizar" value="atualizar" class="btn btn-info"> <i class="icon-refresh icon-white"></i> atualizar</button>
            <!--<button type="submit" id="idinserir" name="inserir" value="inserir" class="btn btn-success"> <i class="icon-plus icon-white"></i> salvar	</button>-->
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