<?php
 if(isset($_POST['submit']))
 {
   $output=shell_exec('sh /home/c/ca60673/wordpress/public_html/rsync/rsync.sh');
   echo $output;
 }
?>

<form>
        <form action="" method="post">
        User:<br>
        <input type="text" name="user"><br><br>
        Pass:<br>
        <input type="text" name="passwd"><br><br>
        <input type="submit" value="Проверить">

</form>

