<?php

if(isset($_POST['soumettre'])){
        
        extract($_POST);
        $nom = $_POST['nom'];
        $prenom = $_POST['prenom'];
        $identifiant = $_POST['identifiant'];
        $id_numen = $_POST['numen'];
        $mail = $_POST['mail'];
        $mdp = $_POST['mdp'];
        $conf_mdp = $_POST['conf_mdp'];
      
        

        if(!empty($mail) && !empty($mdp)&& !empty($conf_mdp)&& !empty($id_numen)&& !empty($prenom)&& !empty($nom)&& !empty($identifiant)){
            include "./ConnectionMySQL.php";
            if ($mdp==$conf_mdp){
                $connection = getConnection();
                
                $statement = $connection->prepare("SELECT mail FROM comptes WHERE mail= ?");
                $statement->execute([$mail]);
                $ru = $statement->fetchAll();

                if($ru == null){

                $hashpass=password_hash($mdp, PASSWORD_DEFAULT);


                    $statement = $connection->prepare("INSERT INTO comptes (nom,prenom,identifiant,numen,mail,mdp) VALUES (?,?,?,?,?,?)");
                    $statement->execute([$nom,$prenom,$identifiant,$id_numen,$mail,$hashpass]);
                    header("Location: Connection_ccf.html");
                } else {
                    echo"<script type='text/javascript'>alert('Vous avez déjà un compte');</script>";
                }
                
            }
            else {
                echo"<script type='text/javascript'>alert('Les deux mots de passes sont incorrect');</script>";
            }
        }
        
        else{
            $message = "Veuillez remplir l'ensemble des champs";
            echo "<script type='text/javascript'>alert('$message');</script>";
        }
    

    }
?>