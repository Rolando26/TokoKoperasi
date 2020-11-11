<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.3.1.min.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="container">
      <input type="text" id="search" class="form-control mt-3 mb-5" placeholder="serach name...">
      <div class="table-responsive">
        <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th>#</th>
              <th>name</th>
              <th>username</th>
              <th>password</th>
            </tr>
          </thead>
          <tbody id="tampil">
            <?php
              require_once 'koneksi.php';
              $no = 1;
              $query = mysqli_query($koneksi, "SELECT * FROM users");
              while ($row = mysqli_fetch_object($query)) {
             ?>
            <tr>
              <td><?= $no++; ?></td>
              <td><?= $row->name; ?></td>
              <td><?= $row->username; ?></td>
              <td><?= $row->password; ?></td>
            </tr>
          <?php } ?>
          </tbody>
        </table>
      </div>
    </div>
  </body>
  <script type="text/javascript">
    $(document).ready( function() {
      $('#search').on('keyup', function() {
        $.ajax({
          type: 'POST',
          url: 'search.php',
          data: {
            search: $(this).val()
          },
          cache: false,
          success: function(data) {
            $('#tampil').html(data);
          }
        });
      });
    });
  </script>
  </html>