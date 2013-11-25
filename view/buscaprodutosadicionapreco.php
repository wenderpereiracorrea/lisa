<?php
include "../conexao.php";
@session_start(); // Inicializa a sessão
connect();
$dte = date("d/m/y");
$hra = date("H:i");
if (isset($_GET['q'])) {
 $valorBusca = ($_GET['q']);
}
if ($_SESSION["idpedidomovimentacao"] != ""){
   $idpedidomovimentacao = $_SESSION["idpedidomovimentacao"]; 
 }
?>
<?
$sql = "SELECT * FROM produto as produ
where produ.idproduto =  '$valorBusca'
";
mysql_query("SET NAMES 'utf8'");
mysql_query('SET character_set_connection=utf8');
mysql_query('SET character_set_client=utf8');
mysql_query('SET character_set_results=utf8');
$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
$totalconsult = mysql_num_rows($Resultado);
if($totalconsult < 1) { ?>
<!-- total de resultados da consulta -->
<!--=============================================================
	JS
	=============================================================-->
<? }elseif($totalconsult >= 30){ ?>
<div class="alert alert-block alert-error fade in">
<? echo "FAVOR REFINAR A CONSULTA SOMENTE OS PRIMEIROS 30 ITENS SÃO EXIBIDOS"?>
</div>
    <? }else{ ?>
    Preço:</br>
    <select class="span10" name="cmbprecoprodutobaixa" id="idcmbprecoprodutobaixa" >
    <? } ?>
    <?
    while ($array_exibir = mysql_fetch_array($Resultado)) {
    $valprod = urlencode($array_exibir['idproduto'])
    ?>
    <option value="<? echo $array_exibir['idprecoproduto'] ?>">
    R$ <? echo strtoupper($array_exibir['preco']) ?>
    
	</option>
    <? $i++; } ?>
    </select>

<label>Quantidade para baixa</label>
      <input class="" value="<?php echo $txtquantidadepedido; ?>" onclick"" name="txtquantidadepedido"  id="idtxtquantidadepedido" type="text" placeholder="0">
       <button type="submit" id="idadicionar" name="adicionar" value="adicionar" class="btn btn-success"> <i class="icon-plus icon-white"></i> Adicionar	</button>
      
</form>