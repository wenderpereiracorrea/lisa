<?
//======================================================
// Valores
//======================================================
 $txtcodproduto = trim($_POST["txtcodproduto"]);
 $txtfichaproduto = trim($_POST["txtfichaproduto"]);
 $txtpreco = moeda($_POST['txtpreco']);
 $txtquantidade = trim($_POST["txtquantidade"]);
 $txtcodempenho = trim($_POST["txtcodempenho"]);
 function moeda($get_valor) {
		$source = array('.', ','); 
		$replace = array('', '.');
		$valor = str_replace($source, $replace, $get_valor); //remove os pontos e substitui a virgula pelo ponto
		return $valor; //retorna o valor formatado para gravar no banco
	}
//$_SESSION["Ficha"] = $_POST["cmbcategoria"];
//======================================================
//Conectar
//======================================================
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();
$data = date('Y-m-d H:i:s');
//======================================================
//Inserir
//======================================================
if ($_POST[inserir] == "inserir")
{
$consulta = "INSERT INTO precoproduto (empenho_codempenho,produto_codproduto,produto_idproduto, preco, quantidade,quantidadeentrada, ativo) 
             VALUES ('$txtcodempenho','$txtcodproduto','$txtfichaproduto','$txtpreco','$txtquantidade','$txtquantidade','1')";
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
	window.location.assign("../addempenho.php?idempenho=<?echo $txtcodempenho ?>");
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