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
$idnomesetor = ($_GET["idnomesetor"]);
$consulta = "UPDATE  setor 
			 SET 
			  setor = '_$idnomesetor',
			  nomesetor =  '_$idmovimentacao', 
			  ativo = '0'
              WHERE codsetor = '$idproduto'";

$resultado = mysql_query($consulta); 
include "validaerrobanco.php";
?>
<script language="JavaScript">
	window.location.assign("../listagemsetor.php?modo=parc&G_idpedido=<?echo $idmovimentacao?>");
</script>
<?
}
?>
