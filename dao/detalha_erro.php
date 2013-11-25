<?php
/**
 *  Arquivo para manipula��o de erros de forma segura:
 *   envia um e-mail para o administrador com as informa��es sobre o erro
 */

// Nome do site?
$_CONFIG['errorHandler']['siteName'] = 'Mapeamento_residencias';
// De onde vir� o e-mail?
$_CONFIG['errorHandler']['from'] = 'wendercorrea@gmail.com';
$_CONFIG['errorHandler']['fromName'] = 'Wender';
// Para onde vai o e-mail?
$_CONFIG['errorHandler']['to'] = 'wendercorrea@gmail.com';
$_CONFIG['errorHandler']['toName'] = 'wender';

function manipuladorErros($errno, $errstr='', $errfile='', $errline='')
{
	if (error_reporting() == 0) return;

	global $_CONFIG;

	// Verifica se n�o foi chamada por uma 'exception'
	if(func_num_args() == 5) {
		$exception = null;
		list($errno, $errstr, $errfile, $errline) = func_get_args();
		//$backtrace = array_reverse(debug_backtrace());
	} else {
		$exc = func_get_arg(0);
		$errno = $exc->getCode(); // Nome do erro
		$errstr = $exc->getMessage(); // Descri��o do erro
		$errfile = $exc->getFile(); // Arquivo
		$errline = $exc->getLine(); // Linha
		//$backtrace = $exc->getTrace();
	}
	// A vari�vel $backtrace pode ser usada para fazer um Back Trace do erro

	// "Nome" de cada tipo de erro
	$errorType = array (
		E_ERROR => 'ERROR',
		E_WARNING => 'WARNING',
		E_PARSE => 'PARSING ERROR',
		E_NOTICE => 'NOTICE',
		E_CORE_ERROR => 'CORE ERROR',
		E_CORE_WARNING => 'CORE WARNING',
		E_COMPILE_ERROR => 'COMPILE ERROR',
		E_COMPILE_WARNING => 'COMPILE WARNING',
		E_USER_ERROR => 'USER ERROR',
		E_USER_WARNING => 'USER WARNING',
		E_USER_NOTICE => 'USER NOTICE',
		E_STRICT => 'STRICT NOTICE',
		E_RECOVERABLE_ERROR => 'RECOVERABLE ERROR'
	);

	// Define o "nome" do erro atual
	if (array_key_exists($errno, $errorType)) {
		$err = $errorType[$errno];
	} else {
		$err = 'CAUGHT EXCEPTION';
	}

	// Se est� ativo o LOG de erros, salva uma mensagem no log, usando o formato padr�o
    if (ini_get('log_errors'))
        error_log(sprintf("PHP %s:  %s in %s on line %d", $err, $errstr, $errfile, $errline));

	// Mensagem para o email
	$mensagem = '';
	$mensagem .= '[ ERRO NO PHP ]' . "\r\n";
	$mensagem .= 'Site: ' . $_CONFIG['errorHandler']['siteName'] . "\r\n";
	$mensagem .= 'Tipo de erro: ' . $err . "\r\n";
	$mensagem .= 'Arquivo: ' . $errfile . "\r\n";
	$mensagem .= 'Linha: ' . $errline . "\r\n";
	$mensagem .= 'Descri��o: ' . $errstr . "\r\n";
	if (isset($_SERVER['REMOTE_ADDR'])) {
		$mensagem .= "\r\n";
		$mensagem .= '[ DADOS DO VISITANTE ]' . "\r\n";
		$mensagem .= 'IP: ' . $_SERVER['REMOTE_ADDR'] . "\r\n";
		$mensagem .= 'User Agent: ' . $_SERVER['HTTP_USER_AGENT'] . "\r\n";
	}
	if (isset($_SERVER['REQUEST_URI'])) {
		$url = (preg_match('/HTTPS/i', $_SERVER["SERVER_PROTOCOL"])) ? 'https' : 'http';
		$url .= '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
		$mensagem .= "\r\n";
		$mensagem .= 'URL: ' . $url . "\r\n";
	}
	if (isset($_SERVER['HTTP_REFERER'])) {
		$mensagem .= 'Referer: ' . $_SERVER['HTTP_REFERER'] . "\r\n";
	}
	$mensagem .= "\r\n";
	$mensagem .= 'Data: ' . date('d/m/Y H:i:s'). "\r\n";

	// Mensagem simples
	$mensagemSimples .= $err . ': ' . $errstr . ' no arquivo ' . $errfile . ' (Linha ' . $errline . ')';


	// Come�a a defini��o do e-mail
	$assunto = '[' . $err . '] ' . $_CONFIG['errorHandler']['siteName'] . ' - ' . date('d/m/y H:i:s');

	$headers = '';
	$headers .= 'From: ' . $_CONFIG['errorHandler']['fromName'] . ' <' . $_CONFIG['errorHandler']['from'] . '>' . "\r\n";
	$headers .= 'To: ' . $_CONFIG['errorHandler']['toName'] . ' <' . $_CONFIG['errorHandler']['to'] . '>' . "\r\n";
	$headers .= 'Reply-To: ' . $_CONFIG['errorHandler']['fromName'] . ' <' . $_CONFIG['errorHandler']['from'] . '>' . "\r\n";
	$headers .= 'Return-Path: ' . $_CONFIG['errorHandler']['fromName'] . ' <' . $_CONFIG['errorHandler']['from'] . '>' . "\r\n";
	$headers .= 'X-Mailer: PHP/' . phpversion();

	// Faz um envio simples
	$enviado = @mail($_CONFIG['errorHandler']['to'], $assunto, $mensagem, $headers);

	// Verifica se foi poss�vel enviar o email, caso contr�rio exibe-o na tela
	if ($enviado)
		return true;
	else
		echo $mensagemSimples;
}

// Define o seu novo manipulador de erros
set_error_handler('manipuladorErros');

echo $n;
?>