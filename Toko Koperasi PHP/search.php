<?php
if (isset($_POST['search'])) {
  require_once 'koneksi.php';
  $no = 1;
  $search = $_POST['search'];
  $query = mysqli_query($koneksi, "SELECT * FROM users WHERE username LIKE '%".$search."%'");
  $query1 = mysqli_query($koneksi, "SELECT * FROM users WHERE name LIKE '%".$search."%'");
  $quer2 = mysqli_query($koneksi, "SELECT * FROM users WHERE password LIKE '%".$search."%'");
  while ($row = mysqli_fetch_object($query)) {
 ?>
<tr>
  <td><?= $no++; ?></td>
  <td><?= $row->name; ?></td>
  <td><?= $row->username; ?></td>
  <td><?= $row->password; ?></td>
</tr>
<?php }
}?>