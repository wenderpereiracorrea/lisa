<?php

if($_SERVER['REMOTE_ADDR'] == "127.0.0.1"){

ob_start();

ini_set('output_buffering', '4096');
ini_set('error_reporting', NO);

// dados de conex�o com o banco de dados a ser backupeado
$server = "localhost:3306";
$usuario = "root";
$senha = "";
$dbname = "sigen";


// conectando ao banco
mysql_connect($server,$usuario,$senha) or die(mysql_error());
mysql_select_db($dbname) or die(mysql_error());

// gerando um arquivo sql. Como?
// a fun��o fopen, abre um arquivo, que no meu caso, ser� chamado como: nomedobanco.sql
// note que eu estou concatenando dinamicamente o nome do banco com a extens�o .sql.
//$back = fopen($dbname.".sql","w");
 $backup = 
 $back = fopen('db-backup-'.time().'_'.(md5(implode(',',$tables))).'.sql','w+');

// aqui, listo todas as tabelas daquele banco selecionado acima
$res = mysql_list_tables($dbname) or die(mysql_error()); 

// resgato cada uma das tabelas, num loop
while ($row = mysql_fetch_row($res)) {
$table = $row[0];
// usando a fun��o SHOW CREATE TABLE do mysql, exibo as fun��es de cria��o da tabela,
// exportando tamb�m isso, para nosso arquivo de backup
$res2 = mysql_query("SHOW CREATE TABLE $table");
// digo que o comando acima deve ser feito em cada uma das tabelas
while ( $lin = mysql_fetch_row($res2)){
// instru��es que ser�o gravadas no arquivo de backup
fwrite($back,"DROP TABLE IF EXISTS $table;");
fwrite($back,"$row[1]\n\n");
fwrite($back,"\n#\n# Cria��o da Tabela : $table\n#\n\n");
fwrite($back,"$lin[1] ;\n\n#\n# Dados a serem inclu�dos na tabela\n#\n\n");

// seleciono todos os dados de cada tabela pega no while acima
// e depois gravo no arquivo .sql, usando comandos de insert
$res3 = mysql_query("SELECT * FROM $table");
while($r=mysql_fetch_row($res3)){
$sql="INSERT INTO `$table`  VALUES (";

// este la�o ir� executar os comandos acima, gerando o arquivo ao final,
// na fun��o fwrite (gravar um arquivo)
// este la�o tamb�m ir� substituir as aspas duplas, simples e campos vazios
// por aspas simples, colocando espa�os e quebras de linha ao final de cada registro, etc
// deixando o arquivo pronto para ser importado em outro banco
for($j=0; $j<mysql_num_fields($res3);$j++)
{	if (is_numeric($r[$j])){
$sql .="".addslashes($r[$j]).",";// se o valor � num�rico, fica sem aspas simples...
}else{
$sql .="'".addslashes($r[$j])."',";// se o valor n�o � num�rico, ele fica entre aspas simples...
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
// gerando o arquivo para download, com o nome do banco e extens�o sql.
//$arquivo = $dbname.".sql";
$arquivo = 'db-backup-'.time().'_'.(md5(implode(',',$tables))).'.sql';
header("Content-type: application/sql");
header("Content-Disposition: attachment; filename=$arquivo");
// l� e exibe o conte�do do arquivo gerado
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


// Vari�vel que junta os valores acima e monta o corpo do email

$vai = "eee";

require_once("phpmailer/class.phpmailer.php");

define('GUSER', 'wendercorrea@gmail.com');	// <-- Insira aqui o seu GMail
define('GPWD', '$wadfg123');		// <-- Insira aqui a senha do seu GMail

function smtpmailer($para, $de, $de_nome, $assunto, $corpo) { 
	global $error;
	$mail = new PHPMailer();
	$mail->IsSMTP();		// Ativar SMTP
	$mail->SMTPDebug = 1;		// Debugar: 1 = erros e mensagens, 2 = mensagens apenas
	$mail->SMTPAuth = true;		// Autentica��o ativada
	$mail->SMTPSecure = 'ssl';	// SSL REQUERIDO pelo GMail
	$mail->Host = 'smtp.gmail.com';	// SMTP utilizado
	$mail->Port = 465;  		// A porta 465 dever� estar aberta em seu servidor
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

// Insira abaixo o email que ir� receber a mensagem, o email que ir� enviar (o mesmo da vari�vel GUSER), 
//o nome do email que envia a mensagem, o Assunto da mensagem e por �ltimo a vari�vel com o corpo do email.

 if (smtpmailer('wendercorrea@gmail.com', '$email', 'Nome do Enviador', 'Assunto do Email', $vai)) {

	//Header("location:http://www.dominio.com.br/obrigado.html"); // Redireciona para uma p�gina de obrigado.

}
if (!empty($error)) echo $error;
?>