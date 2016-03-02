<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <title>ProjetWeb</title>
  </head>

  <body>
    <h3>Portail Candidat</h3>
      <nav>
        <ul>
          <li><a href="#"> Accueil</a></li>
          <li><a href="#"> Connexion </a></li>
        </ul>
      </nav>


    <h1>Entrez votre adresse mail et votre mot de passe</h1>

    <br/><br/>
    <form method="post">
        <input type="text" name="mailconnect" placeholder="Mail" required/>
        <input type="password" name="mdpconnect" placeholder="Mot de passe" required/>
        <input type="submit" name="formconnexion" placeholder="Se connecter" />

    </form>

    <?php
    if(isset($erreur))
    {
        echo '<font color="red">'.$erreur;
    }
    ?>


    <?php
    session_start();

    $bdd = new PDO('mysql:host=127.0.0.1;dbname=sesame', 'root','');

    if(isset($_POST['formconnexion']))
    {
        $mailconnect = ($_POST['mailconnect']);
        $mdpconnect = ($_POST['mdpconnect']);
        if(!empty($mailconnect) AND !empty($mdpconnect))
        {
            $requser = $bdd->prepare("SELECT*FROM candidat WHERE mailCandidat = ? AND mdpCandidat = ?");
            $requser->execute(array($mailconnect, $mdpconnect));
            $userexist = $requser->rowCount();
            if($userexist == 1)
            {
                $userinfo = $requser->fetch();
                $_SESSION['ID'] = $userinfo['ID'];
                $_SESSION['nomCandidat'] = $userinfo['nomCandidat'];
                $_SESSION['prenomCandidat'] = $userinfo['prenomCandidat'];
                $_SESSION['mailCandidat'] = $userinfo['mailCandidat'];
                header("Location: profil.php?id=".$_SESSION['ID']);
            }
            else
            {
                $erreur = "Mauvais mail ou mot de passe !";
                echo $erreur;
            }
        }
        else
        {
            $erreur = "Tous les champs doivent etre completes";
            echo $erreur;
        }
    }

    ?>
  </body>
