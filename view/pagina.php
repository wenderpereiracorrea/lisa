<?
//Conex�o ao banco de dados 
include "../conexao.php";
connect();

//Senten�a sql (sem limit) 
$_pagi_sql = "select distinct p.codigo, date_format(data, '%d/%m/%Y') as 'data', nome_fantasia, caminho
		 from com_proposta p, adm_clientes c where p.cliente = c.cod order by p.codigo"; 

//quantidade de resultados por p�gina (opcional, por padr�o 20) 
$_pagi_quantos = 10; 

//Inclu�mos o script de pagina��o. Este j� executa a consulta automaticamente 
include("paginator.inc.php"); 

//Lemos e escrevemos os registros da p�gina atual 
while($row = mysql_fetch_array($_pagi_result)){ 
    echo $row['codigo']."<br />"; 
} 

//Incluimos a barra de navega��o 
echo"<p>".$_pagi_navega��o."</p>"; 
?>