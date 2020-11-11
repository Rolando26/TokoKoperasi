<?php
include("koneksi.php");


    $nama=$_POST['nama'];    
    $password=$_POST['password'];
 
    $b=mysqli_query($koneksi, "INSERT INTO users(nama,password)
    value('$nama','$password')");

     
        if($b){
            header("location:index.php");
        }

    

?>