<? include "header.php"; 
include "conexao.php";
connect();
 @session_start(); // Inicializa a sessão
?>
<!--=============================================================
	BUSCA AJAX
	=============================================================-->
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
<form name="form1" id="form1" method="post" action="dao/usuarioinsert.php">
<!--=============================================================
	BUSCA DE PRODUTOS 
	=============================================================-->
    <ul class="nav nav-tabs">
	<li><a href="listagemusuarios.php">Listagem Usuários</a></li>
    <li>
    <a href="addusuario.php">Cadastro Usuário</a>
    </li>
   	<li class="active"><a href="usuario.php">Usuário por Setor</a></li>
	<li><a href="usuariosenha.php">Novo Senha</a></li>
    </ul>
    <div class="form-actions">
	<fieldset>
	<legend>
        	<i class="icon-user"></i> Setor Usuário
	</legend>
            <?
            if(empty($_GET["g_idproduto"])) {
			 $g_idproduto = ($_GET["g_idproduto"]);
            }else{
	            $g_idproduto = ($_GET["g_idproduto"]);
            }
            ?>
            <?
	    		$sql = "SELECT str.*,COUNT(str.codsetor) as total FROM
						setor as str, usuario as usuar
						where str.ativo='1' ";
						//and
						//str.codsetor = usuar.setor_codsetor
						//group by str.codsetor";

			mysql_query("SET NAMES 'utf8'");
			mysql_query('SET character_set_connection=utf8');
			mysql_query('SET character_set_client=utf8');
			mysql_query('SET character_set_results=utf8');
			$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
			while ($array_exibir = mysql_fetch_array($Resultado)) 
			{
			 $nomecategoria = strtoupper($array_exibir['nomesetor']);
			 $codsetor = strtoupper($array_exibir['codsetor']);
			 $total = strtoupper($array_exibir['total']);
             $i++;
			   }
	   
			?>                  
            <label id="Label1">Setor Usuário</label>
			<div class="input-append" >
			<select class="span12" name="cmbcategoria" id="Select1" onchange="location.href='usuario.php?g_idproduto='+this.value;">
               <option value="<?  ?>" /><? //echo $nomecategoria; ?></option>
				<?
	    		$sql = "SELECT str.*,COUNT(str.codsetor) AS total FROM setor AS str,usuario as usuar
						where str.codsetor = usuar.setor_codsetor
						group by nomesetor
						";
						//and
						//str.codsetor = usuar.setor_codsetor
						//group by str.codsetor";
					mysql_query("SET NAMES 'utf8'");
					mysql_query('SET character_set_connection=utf8');
					mysql_query('SET character_set_client=utf8');
					mysql_query('SET character_set_results=utf8');
					$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
				   while ($array_exibir = mysql_fetch_array($Resultado)) 
				   {
					?>
				    <option value="<? echo $array_exibir['codsetor']?>">
				    <? echo strtoupper($array_exibir['nomesetor'])?>
					... Usuários: <? echo strtoupper($array_exibir['total'])?>
                    </option>
                    <?
					$i++;
			        }
					
				?>
			</select>
			</div>
            <?
            if(empty($_GET["g_idproduto"])) {
			
            }else{
			
            ?>
            <label id="lblpesquisaprodutos">Listagem de Usuários</label>
			<div class="input-append" >
			<select class="span12" name="cmbcategoria" id="idcmbcategoria" onchange="location.href='addusuario.php?idusuario='+this.value;">
                <option value=""><? $g_idproduto ?></option>
				<?
					$sql = "
					SELECT * FROM setor as seto,usuario as usua
					where seto.codsetor = usua.setor_codsetor and
					seto.codsetor = '$g_idproduto'";
					//echo $sql;
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
						<option value="<?echo $array_exibir['codusuario']?>">
						<? echo strtoupper($array_exibir['login'])?>
						</option><?
						$i++;
				   }
				?>
			</select>
			</div>
		
	        <?    
            }
            ?>	
			<span class="help-block">Busca interativa</span>
			<div id="resultadoBusca"></div>
			
	</div>
	</fieldset>
	<script src="bootstrap/js/bootstrap-dropdown.js"></script>
	<script src="bootstrap/js/bootstrap-collapse.js"></script>
	</div>
	</div>
	<? include "footer.php" ?>
</form>
