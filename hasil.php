<?php include 'header.php';
session_start();
if(!isset($_SESSION["login"])){
  header("Location: login.php");
  exit;
}
?>
<br>
<script>
function myFunction() {
    window.print();
}
</script>
<h1>Hasil Diagnosa</h1><br>
<a href="logout.php">logout</a>
<div class="container">
  <button style="float:right;" class="btn btn-success" onclick="myFunction()">CETAK</button>
</div>
<div class="container col-6">
  <div class="input-group mb-3">
    <div class="input-group-prepend">
        <span class="input-group-text"><h5>KERUSAKAAN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5></span>
    </div>
    <textarea class="form-control" rows="1"readonly><?php echo "$kerusakaan"; ?></textarea>
  </div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text"><h5>INFO KERUSAKAAN&nbsp;&nbsp;&nbsp;</h5></span>
  </div>
  <textarea class="form-control" rows="6"   readonly><?php echo "$info"; ?></textarea>
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text"><h5>SOLUSI KERUSAKAAN</h5></span>
  </div>
  <textarea class="form-control" rows="6"  readonly><?php echo "$solusi"; ?> </textarea>
</div>
</div>
<br>
<?php include 'footer.php'; ?>