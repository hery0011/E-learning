<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "devinboxw3school";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection échouée : " . mysqli_connect_error());
}
else
{
	if(isset($_POST["nomComplet"]) && isset($_POST["mail"]) && isset($_POST["tel"]) && isset($_POST["date"]) && isset($_POST["module"]) && isset($_POST["typeCours"]))
	{

		$nomComplet = ltrim($_POST["nomComplet"]);
		$mail = ltrim($_POST["mail"]);
		$datecours = ltrim($_POST["date"]);
		$tel = ltrim($_POST["tel"]);
		$module = ltrim($_POST["module"]);
		$typeCours = ltrim($_POST["typeCours"]);
		$responsable = " ";
		$status="non";
		$notes = " ";
		$attestation="non";

		//selectena kely aloha alohan'ny hi-insérena


		$sql = "SELECT nomComplet, mail, date, tel, module, typeCours FROM clients WHERE (nomComplet = '$nomComplet' and mail = '$mail' and date = '$datecours' and tel = $tel and module = '$module' and typeCours = '$typeCours')";

		if ($result = mysqli_query($conn, $sql)) {
			if(mysqli_num_rows($result)>0)
			{
				echo "deja enregistrer";
			}
			else
			{

				$sql = "INSERT INTO clients (nomComplet, mail, date, tel, module, typeCours,responsable, status,notes,attestation) VALUES ('$nomComplet', '$mail', '$datecours', $tel, '$module', '$typeCours','$responsable','$status','$notes','$attestation')";

			if (mysqli_query($conn, $sql)) {
    				//echo "Un clients a été enregistrer";
    			header("location:inscription.html");
			} else {
    			echo "Erreur d'enregistrement : " . $sql . "<br>" . mysqli_error($conn);
			}

			}
		}
    

	}


}

mysqli_close($conn);



 ?>