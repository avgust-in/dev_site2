<?php
// Защита от двойного запуска
$lock = fopen('/tmp/lock_file.lock', 'w');
if ( !($lock && flock($lock, LOCK_EX | LOCK_NB)) ) {
    exit( 'already running' );
}
 
// Коннект к БД
$sql = mysqli_connect('...', '...', '...', '...');
if ( !$sql ) die ("Error");
 
// Парсинг
foreach ($s1 as $k1)
{
    ...
foreach ($s2 as $k2)
{
    ...
foreach ($s3 as $k3)
{
    ...
foreach ($s4 as $k4)
{
    ...
}
foreach ($s5 as $k5)
{
    ...
foreach ($s6 as $k6)
{
    ...
foreach ($s7 as $k7)
{
    ...
}
$query = "INSERT INTO tabl1 (r1, r2, r3, r4, r5, r6, r7, r8) VALUES ('$k1', '$k2', '$k3', '$k4', '$k5', '$k6', '$k7', '$k8') ON DUPLICATE KEY UPDATE r5='$k5', r6='$k6', r7 = '$k7', r8='$k8'";
mysqli_query($sql, $query);
flush();
}
}
}
}
}
// Удаляем из БД все записи, которым больше 24 часов
$now_delete = date("Y-m-d H:i:s", time() - 86400);
$query_delete = "DELETE FROM tabl1 WHERE r8<'$now_delete'";
if (  mysqli_query($sql, $query_delete)  ) echo "Старые записи подчищены.<br>";
else echo "Старые записи не подчищены <br>";
 
mysqli_close( $sql );
?>
