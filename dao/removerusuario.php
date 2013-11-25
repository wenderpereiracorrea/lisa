<?
//======================================================
//Conectar
//======================================================
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();
?>
 <?
 if(($_GET["idproduto"])=='') {
    $idproduto = -1;
}else{
$idproduto = ($_GET["idproduto"]);
$idmovimentacao = ($_GET["idmovimentacao"]);
          $sql = "SELECT *
					FROM usuario as usuar
					WHERE usuar.codusuario = '$idproduto'; ";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');			
        $Resultadoprecoproduto = mysql_query($sql) or die("Erro: " . mysql_error());
        while ($array_exibir = mysql_fetch_array($Resultadoprecoproduto)) 
        {
            $txtlogin= ($array_exibir['login']);
            $txtemail = ($array_exibir['email']);
          
        }
  }           
?>
<?
if(($_GET["idproduto"])=='') {
    $idproduto = -1;
}else{
$idproduto = ($_GET["idproduto"]);
$idmovimentacao = ($_GET["idmovimentacao"]);
$consulta = "UPDATE  usuario 
			 SET 
			  login =  '_$txtlogin', 
			  email = '_$txtemail',
			  ativo = '0'
              WHERE codusuario = '$idproduto'";

$resultado = mysql_query($consulta); 
include "validaerrobanco.php";
?>
<script language="JavaScript">
	window.location.assign("../listagemusuarios.php?modo=parc&G_idpedido=<?echo $idmovimentacao?>");
</script>
<?
}
?>
