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
$idmovimentacao = ($_GET["idmovimentacao"]);

$consulta = "DELETE FROM pedidomovimentacao WHERE codmovimentacao= '$idproduto'";
$resultado = mysql_query($consulta); 
include "validaerrobanco.php";
?>
<script language="JavaScript">
	window.location.assign("../movimentacao.php?modo=parc&G_idpedido=<?echo $idmovimentacao?>");
</script>
<?
}
?>
