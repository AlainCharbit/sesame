 <?php
session_start();
$_SESSION = array();
session_destroy();
header("Location: login"); /*le membre a bien ete deconnecte*/
?>
