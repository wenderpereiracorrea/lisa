<?
include "conexao.php";
connect();
$data = date('Y-m-d H:i:s');
if (!isset($_SESSION)) session_start();
$ip = $_SERVER['REMOTE_ADDR'];
$user = trim($_POST["login"]);
$pwd = md5($_POST["senha"]);
$sQuery = "select usu.login, usu.senha, usu.tipousuario,usu.codusuario,perf.perfil,perf.idtipousuario
           from usuario as usu,tipousuario as perf
           where  usu.login = '" . $user . "' and 
				  usu.senha = '". $pwd ."' and 
				  usu.ativo = '1' and
				  usu.tipousuario = perf.idtipousuario
				  ";
$oUser = mysql_query($sQuery)
or die("Query invalida: " . mysql_error());
if (mysql_num_rows($oUser) > 0)
{
    $line = mysql_fetch_array($oUser);
    $_SESSION["login"] = $line['login'];
    $_SESSION["senha"] = $line['senha'];
    $_SESSION["codusuario"] = $line['codusuario'];
    $_SESSION["tipousuario"] = $line['tipousuario'];
    $_SESSION["perfilusuario"] = $line['perfil'];
	
    echo "<script>window.location='inicial.php'</script>";
}
else
{
?>
<script language="JavaScript">
alert("Usuário e/ou Senha incorreta!");
window.location = 'index.php';
</script>
<?
}
$usuariologado = $_SESSION["codusuario"];
$consulta = "INSERT INTO historico (usuario_codusuario,ip,data,acao)
             VALUES ('$usuariologado','$ip','$data','logar')";
$resultado = mysql_query($consulta);
include "dao/validaerrobanco.php";
?>


