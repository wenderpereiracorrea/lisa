<?php

if($_SERVER['REMOTE_ADDR'] == "127.0.0.1"){

ob_start();

ini_set('output_buffering', '4096');
ini_set('error_reporting', NO);

// dados de conexão com o banco de dados a ser backupeado
$server = "localhost:3306";
$usuario = "root";
$senha = "";
$dbname = "sigen";


// conectando ao banco
mysql_connect($server,$usuario,$senha) or die(mysql_error());
mysql_select_db($dbname) or die(mysql_error());

// gerando um arquivo sql. Como?
// a função fopen, abre um arquivo, que no meu caso, será chamado como: nomedobanco.sql
// note que eu estou concatenando dinamicamente o nome do banco com a extensão .sql.
//$back = fopen($dbname.".sql","w");
 $backup = 
 $back = fopen('db-backup-'.time().'_'.(md5(implode(',',$tables))).'.sql','w+');

// aqui, listo todas as tabelas daquele banco selecionado acima
$res = mysql_list_tables($dbname) or die(mysql_error()); 

// resgato cada uma das tabelas, num loop
while ($row = mysql_fetch_row($res)) {
$table = $row[0];
// usando a função SHOW CREATE TABLE do mysql, exibo as funções de criação da tabela,
// exportando também isso, para nosso arquivo de backup
$res2 = mysql_query("SHOW CREATE TABLE $table");
// digo que o comando acima deve ser feito em cada uma das tabelas
while ( $lin = mysql_fetch_row($res2)){
// instruções que serão gravadas no arquivo de backup
fwrite($back,"DROP TABLE IF EXISTS $table;");
fwrite($back,"$row[1]\n\n");
fwrite($back,"\n#\n# Criação da Tabela : $table\n#\n\n");
fwrite($back,"$lin[1] ;\n\n#\n# Dados a serem incluídos na tabela\n#\n\n");

// seleciono todos os dados de cada tabela pega no while acima
// e depois gravo no arquivo .sql, usando comandos de insert
$res3 = mysql_query("SELECT * FROM $table");
while($r=mysql_fetch_row($res3)){
$sql="INSERT INTO `$table`  VALUES (";

// este laço irá executar os comandos acima, gerando o arquivo ao final,
// na função fwrite (gravar um arquivo)
// este laço também irá substituir as aspas duplas, simples e campos vazios
// por aspas simples, colocando espaços e quebras de linha ao final de cada registro, etc
// deixando o arquivo pronto para ser importado em outro banco
for($j=0; $j<mysql_num_fields($res3);$j++)
{	if (is_numeric($r[$j])){
$sql .="".addslashes($r[$j]).",";// se o valor é numérico, fica sem aspas simples...
}else{
$sql .="'".addslashes($r[$j])."',";// se o valor não é numérico, ele fica entre aspas simples...
}}
$sql = ereg_replace(",$", "", $sql);
$sql .=");\n";

fwrite($back,$sql);
echo $back;

}
}
}

// fechar o arquivo que foi gravado
fclose($back);
// gerando o arquivo para download, com o nome do banco e extensão sql.
//$arquivo = $dbname.".sql";
$arquivo = 'db-backup-'.time().'_'.(md5(implode(',',$tables))).'.sql';
header("Content-type: application/sql");
header("Content-Disposition: attachment; filename=$arquivo");
// lê e exibe o conteúdo do arquivo gerado
readfile($arquivo);
}else{
	echo $_SERVER['REMOTE_ADDR']."<br><br>permissao negada";
}
?>
<?php
// $nome		= $_POST["Nome"];	// Pega o valor do campo Nome
// $fone		= $_POST["Fone"];	// Pega o valor do campo Telefone
// $email		= $_POST["Email"];	// Pega o valor do campo Email
// $mensagem	= $_POST["Mensagem"];	// Pega os valores do campo Mensagem

 //$nome		= "Nome"	// Pega o valor do campo Nome
 //$fone		= "Fone"	// Pega o valor do campo Telefone
 //$email		= "Email"	// Pega o valor do campo Email
 //$mensagem	= "Mensagem"	// Pega os valores do campo Mensagem


// Variável que junta os valores acima e monta o corpo do email

$vai = "eee";

require_once("phpmailer/class.phpmailer.php");

define('GUSER', 'wendercorrea@gmail.com');	// <-- Insira aqui o seu GMail
define('GPWD', '$wadfg123');		// <-- Insira aqui a senha do seu GMail

function smtpmailer($para, $de, $de_nome, $assunto, $corpo) { 
	global $error;
	$mail = new PHPMailer();
	$mail->IsSMTP();		// Ativar SMTP
	$mail->SMTPDebug = 1;		// Debugar: 1 = erros e mensagens, 2 = mensagens apenas
	$mail->SMTPAuth = true;		// Autenticação ativada
	$mail->SMTPSecure = 'ssl';	// SSL REQUERIDO pelo GMail
	$mail->Host = 'smtp.gmail.com';	// SMTP utilizado
	$mail->Port = 465;  		// A porta 465 deverá estar aberta em seu servidor
	$mail->Username = GUSER;
	$mail->Password = GPWD;
	$mail->SetFrom($de, $de_nome);
	$mail->Subject = $assunto;
	$mail->Body = $corpo;
	$mail->AddAddress($para);
	if(!$mail->Send()) {
		$error = 'Mail error: '.$mail->ErrorInfo; 
		return false;
	} else {
		$error = 'Mensagem enviada!';
		return true;
	}
}

// Insira abaixo o email que irá receber a mensagem, o email que irá enviar (o mesmo da variável GUSER), 
//o nome do email que envia a mensagem, o Assunto da mensagem e por último a variável com o corpo do email.

 if (smtpmailer('wendercorrea@gmail.com', '$email', 'Nome do Enviador', 'Assunto do Email', $vai)) {

	//Header("location:http://www.dominio.com.br/obrigado.html"); // Redireciona para uma página de obrigado.

}
if (!empty($error)) echo $error;
?>