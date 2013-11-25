<?
$data = date('Y-m-d H:i:s');
//======================================================
//Conectar
//======================================================
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();
//======================================================
// Valores
//======================================================
$txtcodfornecedor= trim($_POST["txtcodfornecedor"]);
$txtnomefornecedor = trim($_POST["txtnomefornecedor"]);
$txttelefone = trim($_POST["txttelefone"]);
$txtcnpj = trim($_POST["txtcnpj"]);
$txtendereco = trim($_POST["txtendereco"]);
$txtemail= trim($_POST["txtemail"]);
$txtnumero = trim($_POST["txtnumero"]);
$txtobs = trim($_POST["txtobs"]);
$txtdata = trim($_POST["txtdata"]);
$txtativo = trim($_POST["cmbativo"]);
 
$_SESSION["idtxtcodfornecedor"] = $_POST["txtcodfornecedor"];

//======================================================
//Inserir
//======================================================
if ($_POST[inserir] == "inserir")
{
$consulta = "INSERT INTO fornecedor
		  (nome,tel,cnpj,end,email,numero,obs,data,ativo)
		   VALUES
		  ('$txtnomefornecedor','$txttelefone','$txtcnpj','$txtendereco','$txtemail', '$txtnumero','$txtobs','$data','$txtativo')";
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
 window.location.assign("../listagemfornecedor.php?modo=parc&idusuario=<?echo $txtcodfornecedor ?>");
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
	window.location.assign("../addfornecedor.php?modo=parc&idusuario=<?echo $txtcodfornecedor?>");
</script>
<?
}
//======================================================
//Excluir
//======================================================
if ($_POST[excluir] == "excluir")
{
$consulta = "UPDATE usuario 
                    SET 
                    ativo = '0'
                    WHERE codusuario = '$txtcodfornecedor'";
$resultado = mysql_query($consulta);  
include "validaerrobanco.php";
}

//======================================================
//Alterar
//======================================================
if ($_POST[atualizarsenha] == "atualizarsenha")
{
$consulta = "UPDATE  usuario 
			 SET 
			  login =  '$txtlogin', 
			  senha = '$txtsenha',
              WHERE codusuario = '$txtcodfornecedor'";
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
	window.location.assign("../addfornecedor.php?modo=parc&idusuario=<?echo $txtcodfornecedor?>");
</script>
<?
}
?>

