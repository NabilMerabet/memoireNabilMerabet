<!DOCTYPE html>
<html>
<head>
<style> 
body {
  background-image: url("images/pharmaciens-tenant-bouteilles-pilules-antibiotiques-vitamines-medicaments-thermometre-tube-pommade-illustration-vectorielle-pour-pharmacie-magasin-medical-pharmacie-concept-entreprise-pharmaceutique_74855-101.jpg");
  background-color: #cccccc;
  position: relative;
    background-repeat:no-repeat;
    background-size:100% 100vh;
}
.button {
  border: none;
  padding: 0px 0px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;
  position: relative;
}
h1 {
  font-size: 40px;
}

</style>
</head>
<body>

    <center><h1><strong>recycler c'est préserver</strong></h1></center>
    
<div class="btn-group">
<a href="MainMenuLivreur.php"><button class="button button1"><img src="images/download (1).png"width="50" 
    height="50" class="center" ></button></a>
  

</div>
<center><label for="cars">choisi un secteur:</label>
<select name="cars" id="cars">
    <option value="volvo">secteur1</option>
    <option value="saab">secteur2</option>
    <option value="opel">secteur3</option>
    <option value="audi">secteur4</option>
  </select>
</center>
<?php

$bdd = new PDO('mysql:host=localhost;dbname=application','root','');


$requete = $bdd->query('SELECT * FROM livraison');
while ($data = $requete->fetch()) {
  echo '<h2>'.$data['code_livraison'].'</h2>';
  echo '<p>'.$data['adresse_livraison'].'</p>';
  echo '<span>'.$data['code_livreur'].'</span>';
}


$requete->closeCursor();


?>
</body>
</html>


