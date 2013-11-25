<?php
error_reporting(0);
include "conexao.php";
include "valida_user.php";
connect();	
?>
<html>
<head>
<title>Protocolo - Sistema de gestão de  documentos</title>
</head>
<frameset framespacing="0" border="0" frameborder="0" rows="52,*">
  <frame name="faixa" scrolling="no" noresize target="conteúdo" src="superior.php">
  <frameset cols="220,*">
    <frame name="conteúdo" target="principal" src="menu.php" scrolling="auto">
    <frame name="principal" src="corpo_do_sistema.php" scrolling="auto">
  </frameset>
  <noframes>
  <body>
  <p>Esta página usa quadros mas seu navegador não aceita quadros.</p>
  </body>
  </noframes>
</frameset>
</html>
