<?
//======================================================
//Conectar
//======================================================
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();

if(($_GET["idproduto"])=='') {
    $idproduto = -1;
}else{
$idproduto = ($_GET["idproduto"]);
$idempenho = ($_GET["idempenho"]);

$consulta = "DELETE FROM precoproduto WHERE empenho_codempenho = '$idempenho' and produto_idproduto = '$idproduto'";
$resultado = mysql_query($consulta); 
include "validaerrobanco.php";
?>
<script language="JavaScript">
	window.location.assign("../addempenho.php?modo=parc&idempenho=<? echo $idempenho ?>");
</script>
<?
}
?>
