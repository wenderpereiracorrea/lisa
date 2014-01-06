<?
include "header.php";
include "conexao.php";
connect();
?>
<? 
if(empty($_GET["G_idpedido"])) {
}else{
	$g_idpedido = ($_GET["G_idpedido"]);
}
?>
<!--=============================================================
        BUSCA AJAX
        =============================================================-->
<script	src="view/buscaprodutoscomparaestoque.js" type="text/javascript"></script>
<script	src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<!--=============================================================
        SCRIPT JQUEY VALIDATION
        =============================================================-->
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" />
<link rel="stylesheet" href="css/template.css" type="text/css" />
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script	src="js/languages/jquery.validationEngine-pt_BR.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<script	src="js/jsValidate.js" type="text/javascript"></script>
<!--=============================================================
        SCRIPT JQUEY VALIDATION
        =============================================================-->
<script>
    jQuery(document).ready(function() {
        // binds form submission and fields to the validation engine
        jQuery("#form1").validationEngine();
    });
</script>
<form name="form1" id="form1" method="post" action="dao/produtospedidomovimentacao.php">
<!--=========================================================================================================
	=========================================================================================================
	MENU_ABAS
	=========================================================================================================
	=========================================================================================================
-->
		<ul class="nav nav-tabs">
		<li>
		<a href="listagemdepedidos.php">Listagem Pedidos</a>
		</li>
		<li ><a href="pedidomaterial.php">Gerar Pedido</a></li>
		<li class="active"><a href="movimentacao.php">Baixa Produtos</a></li>
		</ul>

	<div class="tabbable"> <!-- Only required for left/right tabs -->
  <ul class="nav nav-tabs">
    <li class="active"><a href="#tab1" data-toggle="tab"><img src="imagens/gestor.png" class="img-rounded" width="20" height="20" /> Pedido: <? echo $g_idpedido ?></a></li>
    <li><a href="#tab2" data-toggle="tab"><i class="icon-shopping-cart"></i> Adiciona Produtos ao Pedido</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="tab1">
      
        <fieldset>
           <div class="span11">
                <div class="input-append" >
					<label id="lblpesquisaprodutos">Pedido por solicitante</label>
                    <i class="icon-list-alt">
                    </i><select class="span10" name="cmbcategoria" id="idcmbcategoria" onchange="location.href = 'movimentacao.php?G_idpedido=' + this.value;">
                        <!--==============================================================================
                                COMBO-BOX COM OS PEDIDOS EM ABERTO POR Pedido por solicitante
                            ===========================================================================-->
                       
                   <option value="$g_idpedido"></option>
                   <? $sqlResultadopedidosolicitante = "
					SELECT * FROM pedido as ped,setor as setu,usuario as usua
					where ped.ativo = '1' group by idpedido
					";
                        mysql_query("SET NAMES 'utf8'");
                        mysql_query('SET character_set_connection=utf8');
                        mysql_query('SET character_set_client=utf8');
                        mysql_query('SET character_set_results=utf8');
                        $Resultadopedidosolicitante = mysql_query($sqlResultadopedidosolicitante) or die("Erro: " . mysql_error());
                        while ($array_exibir = mysql_fetch_array($Resultadopedidosolicitante)) {
                            ?>
                            <option value="<? echo $array_exibir['idpedido'] ?>">
                                <? echo strtoupper($array_exibir['nome']) ?>
                                .......Pedido: <? echo strtoupper($array_exibir['idpedido']) ?>

                            </option>
                            <? $i++;
                        } ?>
                    </select>
                                       
                    <div class="span6">
                        <!--==============================================================================
                                CONSULTA DO PEDIDO
                            ===========================================================================-->
                        <?
                        $sqlResultadotxtpedido = "SELECT * 
								FROM pedido as ped,
								setor as setu,
								usuario as usua
								where idpedido = '$g_idpedido'
								and ped.ativo = '1'";
                        mysql_query("SET NAMES 'utf8'");
                        mysql_query('SET character_set_connection=utf8');
                        mysql_query('SET character_set_client=utf8');
                        mysql_query('SET character_set_results=utf8');
                        $Resultadotxtpedido = mysql_query($sqlResultadotxtpedido) or die("Erro: " . mysql_error());
                        while ($array_exibir = mysql_fetch_array($Resultadotxtpedido)) {
                            $txtidpedido = ($array_exibir['idpedido']);
                            $_SESSION["idpedidomovimentacao"] = $array_exibir['nome'];
                            $txtnomesolicitante = ($array_exibir['nome']);
                            $txtdatapedido = ($array_exibir['datacriacao']);
                            $txtdatafechamento = ($array_exibir['datafechamento']);
                        }
                        ?>
                        <label>Pedido</label>
                        <input class="validate[required,custom[number],minSize[1]]" name="txtidpedido" value="<?php echo $txtidpedido; ?>" id="idtxtidpedido" type="text" placeholder="Numero do pedido">
                    </div>
                    <div class="span6">
                        <label>Nome</label>
                        <input	value="<?php echo $txtnomesolicitante; ?>" class="validate[required,minSize[4]]" name="txtnomesolicitante" id="idtxtnomesolicitante" type="text" placeholder="Nome Produto">
                    </div>
                    <label>Data Pedido</label>
                    <input class="" value="<?php echo $txtdatapedido; ?>" name="txtdatapedido"
                           id="idtxtdatapedido" type="text" placeholder="0">
                    <label>Data Fechamento</label>
                    <input class="" value="<?php echo $txtdatafechamento; ?>" name="txtdatafechamento"
                           id="idtxtdatafechamento" type="text" placeholder="0">
                    </fieldset>
					</div>
					<div class="tab-pane" id="tab2">
					<div class="form-actions">
                      
                           <!--=============================================================
                                    BUSCA DE PRODUTOS
                                    =============================================================-->
                   
                    <? 
					if(!empty($_GET["G_idpedido"])) {
					?>
					<label id="lblpesquisaprodutos">Produtos</label>
					<select class="span10" onchange="buscaInstantanea();" name="cmbcategoria" id="pesquisaprodutos" >
                        <!--==============================================================================
                                COMBO-BOX COM OS PEDIDOS EM ABERTO POR Pedido por solicitante
                            ===========================================================================-->
                       
                        <option value="$g_idpedido"></option>
                        <? $sqlResultadopedidosolicitante = "
            					SELECT idproduto,COUNT(nome) as qtd,nome 
								FROM 
									precoproduto as pecvend,
									produto as prod
                                WHERE
									pecvend.produto_codproduto =  prod.codproduto group by nome 									
                               ";
                        mysql_query("SET NAMES 'utf8'");
                        mysql_query('SET character_set_connection=utf8');
                        mysql_query('SET character_set_client=utf8');
                        mysql_query('SET character_set_results=utf8');
                        $Resultadopedidosolicitante = mysql_query($sqlResultadopedidosolicitante) or die("Erro: " . mysql_error());
                        while ($array_exibir = mysql_fetch_array($Resultadopedidosolicitante)) {
                            ?>
                            <option value="<? echo $array_exibir['idproduto'] ?>">
                                <? echo strtoupper($array_exibir['nome']) ?> -> <? echo $array_exibir['idproduto'] ?>
                                <!--............Preços disponiveis:--> <? //echo strtoupper($array_exibir['qtd']) ?>
                            </option>
                            <? $i++;
                        } ?>
                    </select> 
					<?}?>		
                    </br>
                    <div id="resultadoBusca">
                    </div>
				</div>
			</div>
</div>
<!--=========================================================================================================
	=========================================================================================================
	FIM_MENU_ABAS
	=========================================================================================================
	=========================================================================================================
-->	
    <div class="form-actions">
            
                    <fieldset>
                        <!--
                        ==========================================================================
                        ==========================================================================
                        PRODUTOS DO PEDIDO
                        ==========================================================================
                        ==========================================================================
                        -->
                        <? $sqlResultadopedidosolicitantetotal = "
            					SELECT pedimov.codmovimentacao,prod.idproduto,prod.nome,
										 pedimov.quantidade,pecvenda.preco,
	                                    SUM(pedimov.quantidade * pecvenda.preco) as totalgeral
                                         FROM 
										 pedido as ped,
										 pedidomovimentacao as pedimov,
										 precoproduto as pecvenda,
										 produto as prod
										where idpedido = '$g_idpedido'
										and ped.idpedido = pedimov.pedido_idpedido 
										and pedimov.precoproduto_idprecoproduto = pecvenda.idprecoproduto 
										and pecvenda.produto_idproduto = prod.idproduto
                               ";
                        mysql_query("SET NAMES 'utf8'");
                        mysql_query('SET character_set_connection=utf8');
                        mysql_query('SET character_set_client=utf8');
                        mysql_query('SET character_set_results=utf8');
                        $Resultadopedidosolicitantetotal = mysql_query($sqlResultadopedidosolicitantetotal) or die("Erro: " . mysql_error());
                        while ($array_exibir = mysql_fetch_array($Resultadopedidosolicitantetotal)) {
                            ?>
                            <? $totalgeral = (strtoupper($array_exibir['totalgeral'])) ?>
                            </option>
                            <? $i++;
                        } ?>
                        <?
						$sqlResultadoprodutospedido = 
										"SELECT pedimov.codmovimentacao,prod.idproduto,prod.nome,
										 pedimov.quantidade,pecvenda.preco,
	                                    (pedimov.quantidade * pecvenda.preco) as total
                                         FROM 
										 pedido as ped,
										 pedidomovimentacao as pedimov,
										 precoproduto as pecvenda,
										 produto as prod
										where idpedido = '$g_idpedido'
										and ped.idpedido = pedimov.pedido_idpedido 
										and pedimov.precoproduto_idprecoproduto = pecvenda.idprecoproduto 
										and pecvenda.produto_idproduto = prod.idproduto";
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
                        <? } elseif ($totalconsult >= 1150) { ?>
                            <div class="alert alert-block alert-error fade in">
                                <? echo "FAVOR ENTRAR EM CONTATO COM O ADMINISTRADOR PARA OTIMIZAR BANCO DE DADOS!" ?>
                            </div>
							
                              <table style="width: 100%; border: solid 1px #ddd;" class="table table-bordered" cellpadding="4" cellspacing="4">
                                <tr>
									<table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
									<td style="background-color: #049cdb; color: #FFFFFF;"><b>Id</b></td>
                                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>Ficha</b></td>
                                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>Produto</b></td>
                                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>Baixa</b>
                                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>Preço</b>
                                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b>
                                    <td style="background-color: #049cdb; color: #FFFFFF;"><b>Qtd: <? echo "$totalconsult" ?></td>
                                    </td>
									<span class="label label-info">Total pedido: <? echo number_format($totalgeral,2,",","."); ?></span>
									</tr>
                            <? } else { ?>
                                   <table style="width: 100%; border: solid 1px #ddd;"	class="table table-bordered" cellpadding="4" cellspacing="4">
                                    <tr>
										<td style="background-color: #049cdb; color: #FFFFFF;"><b>Id</b></td>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Ficha</b></td>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Produto</b></td>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Baixa</b>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Preço</b></td>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Total</b>
                                        <td style="background-color: #049cdb; color: #FFFFFF;"><b>Qtd: <? echo "$totalconsult" ?></td>
                                    </tr>
									<span class="label label-info">Total pedido: <? echo number_format($totalgeral,2,",","."); ?></span>
									
                                <? } ?>
                                <?
                                while ($array_exibir = mysql_fetch_array($Resultadoprodutospedido)) {
                                    $valprod = urlencode($array_exibir['codmovimentacao'])
                                    ?><!-- Inicio da formação dos links para exibir a consulta -->
                                    <tr>
										<td><label><?php echo $array_exibir['codmovimentacao'] ?></label>
                                        <td><label><?php echo $array_exibir['idproduto'] ?></label>
                                        <td><label><?php echo $array_exibir['nome'] ?></label>
                                        <td><input type="text" class="span2" value="<?php echo $array_exibir['quantidade'] ?>"></td>
                                        <?php $valorpreco = ($array_exibir['preco']); ?>
                                        <td><input type="text" class="span2"  value="<?php echo number_format($valorpreco,2,",","."); ?>"></td>
                                         <?php $valortotal = ($array_exibir['total']); ?>
                                        <td><input type="text" class="span2"  value="<?php echo number_format($valortotal,2,",","."); ?>"></td>
                                        <td><a href="dao/removerproduto.php?modo=parc&idproduto=<? echo $valprod ?>&idmovimentacao=<? echo $g_idpedido ?>" onclick="return confirm('Confirma exclusão do registro <?php echo $array_exibir['codmovimentacao'] ?>')"><i class="icon-trash"></i> Excluir</a>
									    </td>
                                   </tr>
                                <?
                                $i++;
                              }
						?>
</fieldset>
</div>
</div>
<script src="bootstrap/js/bootstrap-dropdown.js"></script>
<script src="bootstrap/js/bootstrap-tab.js"></script>

<? //include "footer.php" ?>
</form>

