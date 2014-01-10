<?

//======================================================
// Valores
//======================================================
$_SESSION["Ficha"] = $_POST["txtfichaproduto"];
$data = date('Y-m-d H:i:s');
$txtfichaproduto = trim($_POST["txtfichaproduto"]);
$txtnomeproduto = trim($_POST["txtnomeproduto"]);
$txtquantidademinima = trim($_POST["txtquantidademinima"]);
$txtquantidademaxima = trim($_POST["txtquantidademaxima"]);
$txtdescricao = trim($_POST["txtdescricao"]);
$cmbcategoria = trim($_POST["cmbcategoria"]);
$cmbunidademedida = trim($_POST["cmbunidademedida"]);
$cmbativo = trim($_POST["cmbativo"]);

if(!($txtnomeproduto) || !($cmbcategoria )){
	print "Preencha todos os campos!";
	exit();
}
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

$consulta = "INSERT INTO produto
				(idproduto,nome,quantidademinima,quantidademaxima,descricao,categoria_codcategoria,unidademedida_codunidademedida,ativo,data)
				VALUES
				('$txtfichaproduto','$txtnomeproduto', '$txtquantidademinima', '$txtquantidademaxima', '$txtdescricao', '$cmbcategoria','$cmbunidademedida', '$cmbativo','$data')";
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
	window.location.assign("../addprodutos.php?modo=parc&idprocesso=<?echo $txtfichaproduto?>");
</script>
<?
}
//======================================================
//Alterar
//======================================================
if ($_POST[atualizar] == "atualizar")
{
$consulta = "UPDATE  produto 
			 SET 
			  nome =  '$txtnomeproduto',
			  quantidademinima = '$txtquantidademinima',
			  quantidademaxima = '$txtquantidademaxima',
			  descricao = '$txtdescricao',
			  categoria_codcategoria = '$cmbcategoria',
			  unidademedida_codunidademedida = '$cmbunidademedida',
			  ativo = '$cmbativo',
              data = '$data'
			 WHERE idproduto = '$txtfichaproduto'";
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
	window.location.assign("../addprodutos.php?modo=parc&idprocesso=<?echo $txtfichaproduto?>");
</script>
<?
}
//======================================================
//Excluir
//======================================================
if ($_POST[excluir] == "excluir")
{
$consulta = "UPDATE  produto 
			 SET 
			  ativo = '0'
			 WHERE idproduto = '$txtfichaproduto'";
$resultado = mysql_query($consulta);  
include "validaerrobanco.php";
}


?>