<?
include "header.php";
include "conexao.php";
connect();
@session_start(); // Inicializa a sessão
?>
<?
$sql = "SELECT * FROM categoria
			";
mysql_query("SET NAMES 'utf8'");
mysql_query('SET character_set_connection=utf8');
mysql_query('SET character_set_client=utf8');
mysql_query('SET character_set_results=utf8');
$Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
while ($array_exibir = mysql_fetch_array($Resultado)) {
    $codcategoria = ($array_exibir['codcategoria']);
    $codgrupo = ($array_exibir['codgrupo']);
    $nomegrupo = ($array_exibir['nome']);
}
?>
<?

function getArray1() {
    $sql = "select * from categoria";
    $Resultado = mysql_query($sql) or die("Erro: " . mysql_error());
    $i = 0;
    $categoria = array();
    while ($array_exibir = mysql_fetch_array($Resultado)) {
        $categoria[$array_exibir['codgrupo']] = $array_exibir['nome'];
        $i++;
    }
    return $categoria;
}

$meuArray1 = getArray1();
print_r($meuArray1);
?>
<!--=============================================================
        BUSCA AJAX
        =============================================================-->
<script	src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<!--=============================================================
        SCRIPT JQUEY VALIDATION
        =============================================================-->
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" />
<link rel="stylesheet" href="css/template.css" type="text/css" />
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script	src="js/languages/jquery.validationEngine-pt_BR.js"	type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<script	src="js/jsValidate.js" type="text/javascript"></script>
<!--=============================================================
        SCRIPT JQUEY VALIDATION
        =============================================================-->
<script>
    jQuery(document).ready(function() {  // binds form submission and fields to the validation engine
        jQuery("#form1").validationEngine();
    });
</script>
<form name="form1" id="form1" method="post" action="dao/usuarioinsert.php">
    <div class="container">
        <label><H5>SERVIÇO DE ADMINISTRAÇÃO DE SERVIÇOS GERAIS - SASG</H5></label> 
        <label><H5>RELÁTORIO DE MOVIMENTAÇÃO DE ALMOXARIFADO - RMA</H5></label> 
        <label><H5>RELÁTORIO ANALÍTICO</H5></label> 
        <label><H5>UNIDADE GESTORA: FUNDAÇÃO CASA DE RUI BARBOSA</H5></label> 
        <label><H5>CÓDIGO DA UNIDADE GESTORA: 344001</H5></label> 
        <label><H5>MÊS</H5></label> 
        <label><H5>ANO</H5></label> 
    </div>
    <div class="container">
        <legend><H4><i class="icon-shopping-cart"></i> Relátorio Analítico	</h4></legend>
        <?
        $sqlResultadoprodutospedido = "SELECT *,(pedmov.quantidade * prevenda.preco) as saida
									FROM 
									produto AS prod,
									categoria AS categ,sigen.pedido,
									pedidomovimentacao AS pedmov,
									pedido as pedid,
									precoproduto as prevenda
									WHERE
									prod.categoria_codcategoria = categ.codcategoria AND
									pedid.idpedido = pedmov.pedido_idpedido AND
									prod.idproduto = prevenda.produto_idproduto AND
									pedmov.precoproduto_idprecoproduto = prevenda.idprecoproduto
									GROUP BY codgrupo
									";
        mysql_query("SET NAMES 'utf8'");
        mysql_query('SET character_set_connection=utf8');
        mysql_query('SET character_set_client=utf8');
        mysql_query('SET character_set_results=utf8');
        $Resultadoprodutospedido = mysql_query($sqlResultadoprodutospedido) or die("Erro: " . mysql_error());
        $totalconsult = mysql_num_rows($Resultadoprodutospedido);
        if ($totalconsult < 1) {
            ?>
            <!-- total de resultados da consulta -->
            <!--=============================================================
            JS
            =============================================================-->
        <? } elseif ($totalconsult >= 150) { ?>
            <div class="alert alert-block alert-error fade in">
                <? echo "FAVOR REFINAR A CONSULTA SOMENTE OS PRIMEIROS 150 ITENS SÃO EXIBIDOS" ?>
            </div>
            <table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="3" cellspacing="3">
                <tr>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>ESPECIFICAÇÃO <br/>
                            33.90.30.00 - CONSUMO</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>SALDO <br/> ANTERIOR</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>ORÇAMENTARIA</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>EXTRA <BR/>ORÇAMENTARIA</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>SAÍDA</b></td>
                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>SALDO <BR/>ATUAL</td>

                    </td>
                </tr>
            <? } else { ?>
                <span class="badge badge-info"><? echo "Total: $totalconsult" ?></span>
                <table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
                    <tr>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>ESPECIFICAÇÃO <br/>
                                33.90.30.00 - CONSUMO</b></td>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>SALDO <br/> ANTERIOR</b></td>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>ORÇAMENTARIA</b></td>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>EXTRA <BR/>ORÇAMENTARIA</b></td>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>SAÍDA</b></td>
                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>SALDO <BR/>ATUAL</td>


                    </tr>
                <? } ?>
                <?
                while ($array_exibir = mysql_fetch_array($Resultadoprodutospedido)) {
                    $valprod = urlencode($array_exibir['codfornecedor'])
                    ?><!-- Inicio da formação dos links para exibir a consulta -->
                    <tr>
                        <td><label><?php echo $array_exibir['codgrupo'] ?></label>
                        <td><label><?php echo $array_exibir['nome'] ?></label>
                        <td><label><?php echo $array_exibir['tel'] ?></label>
                        <td><label><?php echo $array_exibir['cnpj'] ?></label>
                            <?php $valor = ($array_exibir['saida']); ?>
                        <td><label><?php echo number_format($valor, 2, ",", "."); ?></label>
                        <td><label><?php echo $array_exibir['email'] ?></label>
                    </tr>
                    <?
                    $i++;
                }
                ?>
                </fieldset>
                </div>
                </div>

                <script src="bootstrap/js/bootstrap-dropdown.js"></script>
                <script src="bootstrap/js/bootstrap-collapse.js"></script>
                </div>
                </div>
                <? //include "footer.php"  ?>
                </form>
