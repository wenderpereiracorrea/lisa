<?

//======================================================
// Valores
//======================================================
$txtcodsetor = trim($_POST["txtcodsetor"]);
$txtnomesetor = trim($_POST["txtnomesetor"]);
$cmbativo = ($_POST["cmbativo"]);
$txtsigla = ($_POST["txtsigla"]);
$data = date('Y-m-d H:i:s');
//======================================================
//Conectar
//======================================================
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();
//======================================================
//Inserir
//======================================================
if ($_POST[salvar] == "salvar")
{

$consulta = "INSERT INTO setor
		(nomesetor,setor,data,ativo)
		VALUES
		('$txtnomesetor', '$txtsigla','$cmbativo','$data')";
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
	window.location.assign("../listagemsetor.php?modo=parc&idsetor=<?echo $txtcodsetor ?>");
</script>
<?
}
//======================================================
//Alterar
//======================================================
if ($_POST[atualizar] == "atualizar")
{
 $consulta = "UPDATE setor SET 
			  nomesetor =  '$txtnomesetor',
			  setor = '$txtsigla',
			  ativo = '$cmbativo'
			 WHERE codsetor = '$txtcodsetor'";
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
	window.location.assign("../addsetor.php?modo=parc&idsetor=<?echo $txtcodsetor ?>");
</script>
<?
}
?>