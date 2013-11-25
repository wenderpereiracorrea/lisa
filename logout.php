<?php
    session_write_close();
    session_start(); // Inicializa a sessão
    $_SESSION["login"] = "";
    $_SESSION["senha"] = ""; 
	session_unset();
	session_destroy();
?>

<script language="JavaScript">
	window.location.href = 'index.php';
</script>