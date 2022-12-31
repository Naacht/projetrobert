<?php

if(isset($_POST['soumettre'])){

        $mail = $_POST['mail'];
        $mdp = $_POST['mdp'];
}
        

        if(!empty($mail) && !empty($mdp)){
            
            include "./ConnectionMySQL.php";
            $connection = getConnection();
            $statement = $connection->prepare("SELECT mail FROM comptes WHERE mail= ?");
            $statement->execute([$mail]);
            $ru = $statement->fetchAll();

            if($ru != null){
            $statement = $connection->prepare("SELECT mdp FROM comptes WHERE mail= ?");
            $statement->execute([$mail]);
            $ru_mdp = $statement->fetchAll();
            $vf_mdp = $ru_mdp[0]["mdp"];

            $pass_verif = password_verify($mdp, $vf_mdp);
            if($pass_verif == true){
                header("Location: relevénote.html");
                
            } else{
                echo "Votre adresse mail ou votre mot de passe est incorrect";
            }
            } else {
                echo "Votre adresse mail ou votre mot de passe est incorrect";
            }
            
        }
        
        else {
            $message = "Veuillez remplir l'ensemble des champs";
            echo "<script type='text/javascript'>alert('$message');</script>";
        }
    

?>