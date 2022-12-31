<?php
require "./connectionMySQL.php" ;

print_r($_POST);
if (isset($_POST['soumettre'])){
    $Eleve = (isset($_POST['eleves'])) ? $_POST['eleves'] :null;
    $BTS = (isset($_POST['bts'])) ? $_POST['bts'] :null ;
    $Epreuve = (isset($_POST['epreuve'])) ? $_POST['epreuve'] :null ;
    $Duree = (isset($_POST['durée'])) ? $_POST['durée'] :null;
    $Date = (isset($_POST['date'])) ? $_POST['date'] :null;
    $Note = (isset($_POST['Note'])) ? $_POST['Note'] :null ;
    $Coefficient = (isset($_POST['Coefficient'])) ? $_POST['Coefficient'] :null;
    $Commentaire = (isset($_POST['Commentaire'])) ? $_POST['Commentaire']:null;
}
    if(!empty($BTS)&&!empty($Eleve) &&!empty($Note) &&!empty($Coefficient) &&!empty($Commentaire) &&!empty($Epreuve)&&!empty($Duree)&&!empty($Date)){
    $connection = getConnection();

    $statement = $connection->prepare("INSERT INTO notes (nom, prenom, bts, epreuve, durée, date_notes , note, coefficient, commentaire) VALUES ( :NOM_PRENOM, :BTS, :EPREUVE, :NOTE, :COEFFICIENT, :COMMENTAIRE)");
    $statement->bindParam(':Nom_PRENOM', $Eleve, PDO::PARAM_STR);
    $statement->bindParam(':BTS', $BTS, PDO::PARAM_STR);
    $statement->bindParam(':EPREUVE', $Epreuve, PDO::PARAM_STR);
    $statement->bindParam(':Duree', $Note, PDO::PARAM_STR);
    $statement->bindParam(':Date', $Note, PDO::PARAM_STR);
    $statement->bindParam(':NOTE', $Note, PDO::PARAM_STR);
    $statement->bindParam(':COEFFICIENT', $Coefficient, PDO::PARAM_STR);
    $statement->bindParam(':COMMENTAIRE', $Commentaire, PDO::PARAM_STR);
    $statement->execute();
    $resultat = $statement->fetchAll();

    }
    else{

    echo '<script type="text/javascript">alert("Les données ont été enregistrer !"); </script>';
}