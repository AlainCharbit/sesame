<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8">
    <title>Profil</title>
  </head>

  <body>
    <h3>Portail Candidat</h3>
      <nav>
        <ul>
          <li><a href="#"> Accueil</a></li>
          <li><a href="#"> Connexion </a></li>
          <li><a href='../deconnexion'> Deconnexion </a></li>
        </ul>
      </nav>

    <?php
    session_start();

    $bdd = new PDO('mysql:host=127.0.0.1;dbname=sesame', 'root','');/*Acces à BDD*/

    if(isset($_SESSION['ID']) AND $_SESSION['ID'] > 0)
    {
        $getid = intval($_SESSION['ID']); /*Securisation de la variable*/
        $requser = $bdd->prepare('SELECT * FROM candidats WHERE ID = ?');/*récuperation des informations du membres via son id*/
        $requser->execute(array($getid));
        $userinfo = $requser->fetch();
    }

    echo 'Bienvenue '.$userinfo['prenomCandidat'].' '.$userinfo['nomCandidat'].' !'.'<br><br>';
    echo 'Votre numéro de candidat: '.$userinfo['numCandidat'];

    /* Ici devra apparaître l'historique des QCM réalisé par le candidat, l'idée de la courbe, le niveau du candidat ? */





	
    ?>

  </body>

</html>
