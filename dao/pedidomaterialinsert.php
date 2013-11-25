<?

//======================================================
// Valores
//======================================================
@session_start(); // Inicializa a sessão
$data = date('Y-m-d H:i:s');
$txtnumeropedido = trim($_POST["txtnumeropedido"]);
$cmbsetorsolicitante = trim($_POST["cmbcategoria"]);
$txtnomesolicitante = trim($_POST["txtnomesolicitante"]);
$_SESSION["Ficha"] = $_POST["cmbcategoria"];
$txtlogininsercao = $_SESSION["codusuario"];

if(!($txtnumeropedido) || !($txtnomesolicitante )){
	print "Preencha todos os campos!";
	exit();
}
//======================================================
//Conectar
//======================================================
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();
$d_ate = date("YY-MM-DD");
$h_ora = date("HH:MM:SS");
//======================================================
//Inserir
//======================================================
if ($_POST[inserir] == "inserir")
{
  
$consulta = "INSERT INTO pedido
				(idpedido,nome,setor_codigosetor,ativo,datacriacao,datafechamento,usuario_codusuario)
				VALUES
				('$txtnumeropedido','$txtnomesolicitante','$cmbsetorsolicitante', '1','$data','','$txtlogininsercao')";
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
	window.location.assign("../movimentacao.php?modo=parc&idprocesso=<?echo $txtfichaproduto?>");
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
			  ativo = '1'
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
if($erro == ""){
echo ("nul");

}
}


?>