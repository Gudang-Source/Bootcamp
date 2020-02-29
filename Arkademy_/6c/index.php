<?php
include_once("page/koneksi.php");
$result = mysqli_query($mysqli, "SELECT product.id as id,
   cashier.name as name,
   cashier.id as id_kasir,
   product.name as name_product,
   category.name as name_category,
   category.id as id_category,
   product.price
FROM
product
INNER JOIN cashier ON product.id_cashier = cashier.id
INNER JOIN category ON product.id_category = category.id ");
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Treido Alde Ristivan</title>
  </head>
  <body>
 <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
        <div class="container">
            <a class="navbar navbar-light bg-light">
                <a class="navbar-brand " href="#">
                    <img src="img/logo.png" width="125" height="40" class="d-inline-block align-top" >
                        
                </a>
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <h2><b> Arkademy Bootcamp</b></h2>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#add">ADD</button>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <table class="table table-borderless text-center table-set shadow-sm">
            <thead class="bg-secondary">
                <tr>
                    
                    <th class="text-white p-4" scope="col">Name</th>
                    <th class="text-white p-4" scope="col">Work</th>
                    <th class="text-white p-4" scope="col">Salary</th>
                    <th class="text-white p-4" cope="col">Action</th>
                </tr>
            </thead>
        </thead>
        <tbody>

        <?php
        $no = 1;
          while ($data = mysqli_fetch_array($result)) {
            $kasir = $data['name'];
            ?>
            <tr>
            <td><?= $data['name'] ?></td>
            <td><?= $data['name_product'] ?></td>
            <td><?= $data['name_category'] ?></td>
         


            <td>
              
              <a class="text-danger" href="page/hapus.php?id=<?=$data['id']?>"><img src="img/bin1.png" width="20" height="20"></a>
              <button type="button" class="btn text-success" href="#" data-toggle="modal" data-target="#modaledit<?=$data['id']?>"><img src="img/edit1.png" width="20" height="20"></button>
            </td>
          </tr>

          <?php
            $resultCategory = mysqli_query($mysqli,"SELECT * FROM category");
            $resultCashier = mysqli_query($mysqli,"SELECT * FROM Cashier");
          ?>
          <!-- Modal Edit-->
          <div class="modal fade" id="modaledit<?=$data['id']?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content border-radius">
                  <div class="modal-header no-border">
                  <h5 class="modal-title" id="exampleModalLabel">EDIT</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form action="page/fungsi.php" method="post">
                  <input type="hidden" name="id" value="<?=$data['id']?>">

                  <div class="form-group">
                    <label for="cashier">Cashier</label>
                    <select class="form-control" name="cashier" id="cashier">
                      <option value="<?=$data['id_kasir']?>"><?=$data['name']?></option>
                      <?php while ($datacas = mysqli_fetch_array($resultCashier)) { ?>
                      <option value="<?=$datacas['id']?>"><?= $datacas['name'] ?></option>
                      <?php } ?>
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" id="name"name value="<?=$data['name_product']?>">
                  </div>
                  <div class="form-group">
                    <label for="price">Price</label>
                    <input type="number" class="form-control" name="price" id="name" value="<?=$data['price']?>">
                  </div>
                  <div class="form-group">
                    <label for="category">Category</label>
                    <select class="form-control" name="category" id="category">
                      <option value="<?=$data['id_category']?>"><?=$data['name_category']?></option>
                    <?php  while ($datacat = mysqli_fetch_array($resultCategory)) { ?>
                      <option value="<?=$datacat['id']?>"><?=$datacat['name']?></option>
                    <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="modal-footer">
                  <button type="submit" name="submitEdit" class="btn btn-dark">EDIT</button
                </div>
                  </form>
              </div>
            </div>
          </div>
            <?php
          }
        ?>
        </tbody>
      </table>
    </section>
  </div>

  <?php
  $resultCategory = mysqli_query($mysqli,"SELECT * FROM category");
  $resultCashier = mysqli_query($mysqli,"SELECT * FROM Cashier");
?>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content border-radius">
        <div class="modal-header no-border">
        <h5 class="modal-title" id="exampleModalLabel">ADD</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body no-border">
        <form action="page/fungsi.php" method="post">

          <div class="form-group">
            <label for="cashier">Cashier</label>
            <select class="form-control" name="cashier" id="cashier">
              <option>-- Cashier --</option>
              <?php while ($datacas = mysqli_fetch_array($resultCashier)) { ?>
              <option value="<?=$datacas['id']?>"><?= $datacas['name'] ?></option>
              <?php } ?>
            </select>
          </div>

          <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name"name>
          </div>

          <div class="form-group">
      <label for="category">Category</label>
      <select class="form-control" name="category" id="category">
        <option>-- Category --</option>
      <?php  while ($datacat = mysqli_fetch_array($resultCategory)) { ?>
        <option value="<?=$datacat['id']?>"><?=$datacat['name']?></option>
      <?php } ?>
      </select>
    </div>

          <div class="form-group">
            <label for="price">Price</label>
            <input type="number" class="form-control" name="price" id="name"price>
          </div>

      </div>
      <div class="modal-footer">
        <button type="submit" name="submitAdd" class="btn btn-dark">ADD</button>
      </div>
        </form>
    </div>
  </div>
</div>

    <script src="js/jquery-3.4.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
