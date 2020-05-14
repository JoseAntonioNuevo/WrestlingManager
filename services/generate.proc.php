<?php

include "../services/connection.php";

//Hacer que la ejecución dure más
ini_set('max_execution_time', 300);
set_time_limit(300);

$query_wrestlers="SELECT * FROM tbl_generate";

$consulta=mysqli_query($conn,$query_wrestlers);
while($row = mysqli_fetch_array($consulta)){

$name_wrestler[$row['id_generate']]=$row['name_generate'];
$surname_wrestler[$row['id_generate']]=$row['surname_generate'];
$city_wrestler[$row['id_generate']]=$row['city_generate'];
$genere_wrestler[$row['id_generate']]=$row['genere_generate'];

}


for ($i=1; $i < 25 ; $i++) { 
	$num_name=rand(1,50);
	
    if ($num_name>=34 && $num_name<=44) {
    	
    	$num_surname=rand(34,44);
		$num_city=rand(34,44);

    }else if($num_name>=45 && $num_name<=50){
		
		$num_surname=rand(45,50);
		$num_city=rand(45,50);

    }else{
    	$num_surname=rand(1,33);
		$num_city=rand(1,33);
    }

    $num_genere=$num_name;
    
    $age=rand(18,50);
    $popularity=rand(50,99);
    $credibility=rand(40,99);
    $stars=rand(3,10);
   
   if ($stars>=8) {
   	$salary=rand(400000, 2000000);
   } else if ($stars<5) {
   	$salary=rand(10000, 100000);
   }else{
   	$salary=rand(50000, 500000);
   }

$name=$name_wrestler[$num_name];
$surname=$surname_wrestler[$num_surname];
$city=$city_wrestler[$num_city];
$genere=$genere_wrestler[$num_genere];

$contract=rand(4,52);  

$query_wrestlers2="INSERT INTO tbl_wrestlers (name_wrestler, surname_wrestler, age_wrestler, genere_wrestler, city_wrestler, popularity_wrestler, credibility_wrestler, stars_wrestler, salary_wrestler, contract_wrestler) VALUES ('$name', '$surname', '$age', '$genere', '$city', '$popularity', '$credibility', '$stars', '$salary', '$contract')";

$consulta2=mysqli_query($conn,$query_wrestlers2);

//Pillar id del último wrestler
$id_wrestler = mysqli_insert_id($conn);

$id_hab=rand(1,10);

$query_wrestlers4="INSERT INTO tbl_wrestler_hability (id_wrestler, id_hability) VALUES ('$id_wrestler', '$id_hab')";

$consulta4=mysqli_query($conn,$query_wrestlers4);


/*
//Asignar campeonatos

if (!isset($worldF)) {

if ($genere=="f" && $popularity>70) {
	
	$query_wrestlers5="ALTER TABLE tbl_championship_company SET id_wrestler='$id_wrestler' WHERE id_championship=8";

$consulta5=mysqli_query($conn,$query_wrestlers5);

$worldF=1;

}
}

if (!isset($midF)) {

if ($genere=="f" && $popularity<80) {
	
	$query_wrestlers5="ALTER TABLE tbl_championship_company SET id_wrestler='$id_wrestler' WHERE id_championship=9";

$consulta5=mysqli_query($conn,$query_wrestlers5);

$widF=1;

}
}

if (!isset($worldM)) {

if ($genere=="m" && $popularity>70) {
	
	$query_wrestlers5="ALTER TABLE tbl_championship_company SET id_wrestler='$id_wrestler' WHERE id_championship=3";

$consulta5=mysqli_query($conn,$query_wrestlers5);

$worldM=1;

}
}

if (!isset($midM)) {

if ($genere=="m" && $popularity<80) {
	
	$query_wrestlers5="ALTER TABLE tbl_championship_company SET id_wrestler='$id_wrestler' WHERE id_championship=4";

$consulta5=mysqli_query($conn,$query_wrestlers5);

$widM=1;

}
}

if (!isset($worldM2)) {

if ($genere=="m" && $popularity>70) {
	
	$query_wrestlers5="ALTER TABLE tbl_championship_company SET id_wrestler='$id_wrestler' WHERE id_championship=2";

$consulta5=mysqli_query($conn,$query_wrestlers5);

$worldM2=1;

}
}

if (!isset($midM2)) {

if ($genere=="m" && $popularity<80) {
	
	$query_wrestlers5="ALTER TABLE tbl_championship_company SET id_wrestler='$id_wrestler' WHERE id_championship=5";

$consulta5=mysqli_query($conn,$query_wrestlers5);

$widM2=1;

}
}

*/
$query_wrestlers3="INSERT INTO tbl_company_wrestlers (id_company, id_wrestler) VALUES ('1', '$id_wrestler')";

$consulta3=mysqli_query($conn,$query_wrestlers3);

}

for ($i=1; $i < 20 ; $i++) { 
	$num_name=rand(1,50);
	
    if ($num_name>=34 && $num_name<=44) {
    	
    	$num_surname=rand(34,44);
		$num_city=rand(34,44);

    }else if($num_name>=45 && $num_name<=50){
		
		$num_surname=rand(45,50);
		$num_city=rand(45,50);

    }else{
    	$num_surname=rand(1,33);
		$num_city=rand(1,33);
    }

    $num_genere=$num_name;
    
    $age=rand(18,50);
    $popularity=rand(30,90);
    $credibility=rand(20,90);
    $stars=rand(2,10);
   
   if ($stars>=8) {
   	$salary=rand(400000, 2000000);
   } else if ($stars<5) {
   	$salary=rand(10000, 100000);
   }else{
   	$salary=rand(50000, 500000);
   }

$contract=rand(4,52);   

$name=$name_wrestler[$num_name];
$surname=$surname_wrestler[$num_surname];
$city=$city_wrestler[$num_city];
$genere=$genere_wrestler[$num_genere];

$query_wrestlers2="INSERT INTO tbl_wrestlers (name_wrestler, surname_wrestler, age_wrestler, genere_wrestler, city_wrestler, popularity_wrestler, credibility_wrestler, stars_wrestler, salary_wrestler, contract_wrestler) VALUES ('$name', '$surname', '$age', '$genere', '$city', '$popularity', '$credibility', '$stars', '$salary', '$contract')";

$consulta2=mysqli_query($conn,$query_wrestlers2);

//Pillar id del último wrestler
$id_wrestler = mysqli_insert_id($conn);

$query_wrestlers3="INSERT INTO tbl_company_wrestlers (id_company, id_wrestler) VALUES ('2', '$id_wrestler')";

$consulta3=mysqli_query($conn,$query_wrestlers3);

}

for ($i=1; $i < 15 ; $i++) { 
	$num_name=rand(1,50);
	
    if ($num_name>=34 && $num_name<=44) {
    	
    	$num_surname=rand(34,44);
		$num_city=rand(34,44);

    }else if($num_name>=45 && $num_name<=50){
		
		$num_surname=rand(45,50);
		$num_city=rand(45,50);

    }else{
    	$num_surname=rand(1,33);
		$num_city=rand(1,33);
    }

    $num_genere=$num_name;
    
    $age=rand(18,50);
    $popularity=rand(20,80);
    $credibility=rand(20,88);
    $stars=rand(2,10);
   
   if ($stars>=8) {
   	$salary=rand(400000, 2000000);
   } else if ($stars<5) {
   	$salary=rand(10000, 100000);
   }else{
   	$salary=rand(50000, 500000);
   }

$contract=rand(4,52);

$name=$name_wrestler[$num_name];
$surname=$surname_wrestler[$num_surname];
$city=$city_wrestler[$num_city];
$genere=$genere_wrestler[$num_genere];

$query_wrestlers2="INSERT INTO tbl_wrestlers (name_wrestler, surname_wrestler, age_wrestler, genere_wrestler, city_wrestler, popularity_wrestler, credibility_wrestler, stars_wrestler, salary_wrestler, contract_wrestler) VALUES ('$name', '$surname', '$age', '$genere', '$city', '$popularity', '$credibility', '$stars', '$salary', '$contract')";

$consulta2=mysqli_query($conn,$query_wrestlers2);

//Pillar id del último wrestler
$id_wrestler = mysqli_insert_id($conn);

$id_hab=rand(1,10);

$query_wrestlers4="INSERT INTO tbl_wrestler_hability (id_wrestler, id_hability) VALUES ('$id_wrestler', '$id_hab')";

$consulta4=mysqli_query($conn,$query_wrestlers4);

$query_wrestlers3="INSERT INTO tbl_company_wrestlers (id_company, id_wrestler) VALUES ('3', '$id_wrestler')";

$consulta3=mysqli_query($conn,$query_wrestlers3);

}

for ($i=1; $i < 10 ; $i++) { 
	$num_name=rand(1,50);
	
    if ($num_name>=34 && $num_name<=44) {
    	
    	$num_surname=rand(34,44);
		$num_city=rand(34,44);

    }else if($num_name>=45 && $num_name<=50){
		
		$num_surname=rand(45,50);
		$num_city=rand(45,50);

    }else{
    	$num_surname=rand(1,33);
		$num_city=rand(1,33);
    }

    $num_genere=$num_name;
    
    $age=rand(18,60);
    $popularity=rand(1,99);
    $credibility=rand(1,99);
    $stars=rand(1,10);
   
   if ($stars>=8) {
   	$salary=rand(400000, 2000000);
   } else if ($stars<5) {
   	$salary=rand(10000, 100000);
   }else{
   	$salary=rand(50000, 500000);
   }

$contract=0;

$name=$name_wrestler[$num_name];
$surname=$surname_wrestler[$num_surname];
$city=$city_wrestler[$num_city];
$genere=$genere_wrestler[$num_genere];

$query_wrestlers2="INSERT INTO tbl_wrestlers (name_wrestler, surname_wrestler, age_wrestler, genere_wrestler, city_wrestler, popularity_wrestler, credibility_wrestler, stars_wrestler, salary_wrestler, contract_wrestler) VALUES ('$name', '$surname', '$age', '$genere', '$city', '$popularity', '$credibility', '$stars', '$salary', '$contract')";

$consulta2=mysqli_query($conn,$query_wrestlers2);

//Pillar id del último wrestler
$id_wrestler = mysqli_insert_id($conn);

$id_hab=rand(1,10);

$query_wrestlers4="INSERT INTO tbl_wrestler_hability (id_wrestler, id_hability) VALUES ('$id_wrestler', '$id_hab')";

$consulta4=mysqli_query($conn,$query_wrestlers4);

$query_wrestlers3="INSERT INTO tbl_company_wrestlers (id_company, id_wrestler) VALUES ('4', '$id_wrestler')";

$consulta3=mysqli_query($conn,$query_wrestlers3);

}


?>