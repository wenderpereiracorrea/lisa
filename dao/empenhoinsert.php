﻿<?

//======================================================
// Valores
//======================================================
$txtcodempenho = trim($_POST["txtcodempenho"]);
$txtempenho = trim($_POST["txtempenho"]);
$txtfornecedor = trim($_POST["cmbfornecedor"]);
$data = date('Y-m-d H:i:s');
$cmbativo = ($_POST["cmbativo"]);
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

$consulta = "INSERT INTO empenho
		(empenho,fornecedor_codfornecedor,data,ativo)
		VALUES
		('$txtempenho', '$txtfornecedor','$data','$cmbativo')";
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
	window.location.assign("../listagemempenho.php");
</script>
<?
}
//======================================================
//Alterar
//======================================================
if ($_POST[atualizar] == "atualizar")
{
 $consulta = "UPDATE emepenho SET 
			  emepenho =  '$txtcodempenho',
			  fornecedor_codfornecedor = '$txtfornecedor',
			  ativo = '$cmbativo'
			 WHERE codempenho = '$txtcodempenho'";
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
	window.location.assign("../listagemempenho.php");
</script>
<?
}
?>