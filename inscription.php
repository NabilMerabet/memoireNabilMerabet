<!DOCTYPE html>
<html>
<head>
    <title>S'inscrir</title>
    <style>
        img {
            width: 50px;
            border-radius: 25px ;
            border: 1px solid rgb(0, 0, 0);}
        p.boldtext {
            font-weight:bold ;}
    body {
  background-image: url("images/pharmaciens-tenant-bouteilles-pilules-antibiotiques-vitamines-medicaments-thermometre-tube-pommade-illustration-vectorielle-pour-pharmacie-magasin-medical-pharmacie-concept-entreprise-pharmaceutique_74855-101.jpg") ;
  background-repeat: no-repeat;
  background-size: 100% 100vh; }
 #textboxid {
    height:25px;
    width: 250px;
    font-size:14pt;}
        button
        {
        background-color: lime;
        border-radius: 10px ;}
    </style>
    <script>
        function StringCompare()
{
    var string1 = document.getElementById("textboxid1").value;
    var string2 = document.getElementById("textboxid2").value;
    if(string1 == string2){
        alert("");}
    else{
        alert("mot de passe n'est pas le meme.");}
    return false;}
    </script>
</head>
<body>
    <?php
    
    
    ?>
    <div>
<center><div><h1><b>recycler c'est préserver</b></h1></div></center>
<div style="float: left">
    <img src="images/76254.jpg" alt="">
</div>
</div>
<br>
<br>
<br>
<br> 
    <center><img src="images/depositphotos_137014128-stock-illustration-user-profile-icon.jpg" alt=""></center>
<center><p class="boldtext">S'inscrir</p></center>
    <center><input id="textboxid"  type="text"placeholder="Prénom"></center>
    <br>
<center><input id="textboxid" type="text"placeholder="Nom de famille"></center>
    <br>
<center> <input id="textboxid1" type="password" placeholder="mot de passe"></center>
    <br>
<center><input id="textboxid2" type="password" placeholder="Verification du mot de passe"></center>
    <br>
    <center><input id="textboxid" type="text"placeholder="e-mail"></center>
<br>
<center><input id="textboxid" type="date"></center>
<center><p class="bordertext"><b>livreur/utilisateur</b></p></center>
 <center><input type="radio" id="html" name="fav_language" value="HTML">
 <input type="radio" id="css" name="fav_language" value="CSS"></center>
<br>
<center><div> <a href="MainMenuLivreur.php"><button >inscrir</button> </a> </div></center>
<br>
</body>
</html>