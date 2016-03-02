<?php

include_once('Classes/Connexion.php');

$db = Connexion::ouvrir();
$req = $db->query('SELECT * FROM questions WHERE idDiscipline ="1" ORDER BY RAND() * (SELECT COUNT(ID) FROM questions) LIMIT 20');

while ($donnees = $req->fetch())
{
	echo 'ID : ' . $donnees['ID'] . '<br/>';
}