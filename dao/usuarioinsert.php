<?
//======================================================
// Valores
//======================================================
$data = date('Y-m-d H:i:s'); 
$txtcodusuario = trim($_POST["txtcodusuario"]);
$txtlogin = trim($_POST["txtlogin"]);
$txtsenha = md5($_POST["txtsenha"]);
$txtemail = trim($_POST["txtemail"]);
$cmbcodsetor = trim($_POST["cmbcategoria"]);
$cmbativo = ($_POST["cmbativo"]);
$cmbtipousuario = ($_POST["cmbtipousuario"]);
 
$_SESSION["idcodigousuario"] = $_POST["txtcodusuario"];
//======================================================
//Conectar
//======================================================
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();
//======================================================
//Inserir
//======================================================
if ($_POST[inserir] == "inserir")
{
$consulta = "INSERT INTO usuario
				(login,senha,email,tipousuario,setor_codsetor,ativo,datacadastro)
				VALUES
				('$txtlogin','$txtsenha','$txtemail','$cmbtipousuario','$cmbcodsetor', '$cmbativo','$data')";
				mysql_query("SET NAMES 'utf8'");
				mysql_query('SET character_set_connection=utf8');
				mysql_query('SET character_set_client=utf8');
				mysql_query('SET character_set_results=utf8');			
$resultado = mysql_query($consulta);  
include "validaerrobanco.php";

?>
<script language="JavaScript">
alert ("Salvo");
</script>
<script language="JavaScript">
  window.location.assign("../listagemusuarios.php");
</script>
<?
}
//======================================================
//Alterar
//======================================================
if ($_POST[atualizar] == "atualizar")
{
$consulta = "UPDATE  usuario 
			 SET 
			  login =  '$txtlogin', 
			  ativo = '$cmbativo',
			  setor_codsetor = '$cmbcodsetor'
			 WHERE codusuario = '$txtcodusuario'";
			mysql_query("SET NAMES 'utf8'");
			mysql_query('SET character_set_connection=utf8');
			mysql_query('SET character_set_client=utf8');
			mysql_query('SET character_set_results=utf8');
			$resultado = mysql_query($consulta);  
include "validaerrobanco.php";
?>
<script language="JavaScript">
	alert ("Atualizado");
</script>
<script language="JavaScript">
	window.location.assign("../addusuario.php?modo=parc&idusuario=<?echo $txtcodusuario?>");
</script>
<?
}
//window.location.assign("../addusuario.php?modo=parc&idusuario=<?echo $txtcodusuario
//======================================================
//Alterar
//======================================================
if ($_POST[atualizarsenha] == "atualizarsenha")
{
$consulta = "UPDATE  usuario 
			 SET 
			  login =  '$txtlogin', 
			  senha = '$txtsenha',
              WHERE codusuario = '$txtcodusuario'";
			mysql_query("SET NAMES 'utf8'");
			mysql_query('SET character_set_connection=utf8');
			mysql_query('SET character_set_client=utf8');
			mysql_query('SET character_set_results=utf8');
			$resultado = mysql_query($consulta);  
include "validaerrobanco.php";
?>
<script language="JavaScript">
	alert ("Atualizado");
</script>
<script language="JavaScript">
	window.location.assign("../addusuariosenha.php?modo=parc&idusuario=<?echo $txtcodusuario?>");
</script>
<?
}
?>

