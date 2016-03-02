<?php
session_start();
$_SESSION = array();
session_destroy();
header("Location: loginn.php"); /*le membre a bien ete deconnecte*/
?>
