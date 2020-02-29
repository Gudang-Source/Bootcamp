<?php
include_once("koneksi.php");

  if (isset($_POST['submitAdd'])) {
    $cashier = $_POST['cashier'];
    $name = $_POST['name'];
    $category = $_POST['category'];
    $price = $_POST['price'];


    $sql = "INSERT INTO product VALUES ('','$cashier','$name','$category','$price')";
    $resultAdd = mysqli_query($mysqli,$sql);

    if ($resultAdd) {
      header("Location: ../index.php");
    } else {
      header("Location: ../index.php");
    }
  }

  if (isset($_POST['submitEdit'])) {
    $cashier = $_POST['cashier'];
    $id = $_POST['id'];
    $name = $_POST['name'];
    $category = $_POST['category'];
    $price = $_POST['price'];
    var_dump($id);
    var_dump($cashier);
    var_dump($name);
    var_dump($category);
    var_dump($price);



    $sql = "UPDATE product SET id='$id', name='$name', price='$price', id_category='$category', id_cashier='$cashier' WHERE id='$id'";
    $resultEdit = mysqli_query($mysqli,$sql);

    if ($resultEdit) {
      header("Location: ../index.php");
    } else {
      header("Location: ../index.php");
    }
  }


?>
