<?
//======================================================
// Valores
//======================================================
$data = date('Y-m-d H:i:s');
$txtidpedido = trim($_POST["txtidpedido"]);
if(empty($_GET["cmbprodutos"])) { }else{
	$txtproduto = ($_POST["cmbprodutos"]);
}

$txtcmbprecoprodutobaixa = trim($_POST["cmbprecoprodutobaixa"]);
$txtquantidadepedido = trim($_POST["txtquantidadepedido"]);
if ($_SESSION["tipousuario"] == '1'){
	$txtusuario = 1;
	}else{
	$txtusuario = 2;
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
if ($_POST[adicionar] == "adicionar")
{
$consulta = "INSERT INTO pedidomovimentacao
				(pedido_idpedido,precoproduto_idprecoproduto,quantidade,usuariosistema,data)
				VALUES
				('$txtidpedido','$txtcmbprecoprodutobaixa','$txtquantidadepedido','$txtusuario','$data')";
				mysql_query("SET NAMES 'utf8'");
				mysql_query('SET character_set_connection=utf8');
				mysql_query('SET character_set_client=utf8');
				mysql_query('SET character_set_results=utf8');			
$resultado = mysql_query($consulta);  
include "validaerrobanco.php";
?>

<script language="JavaScript">
	window.location.assign("../movimentacao.php?G_idpedido=<?echo $txtidpedido?>");
</script>
<?
}
?>