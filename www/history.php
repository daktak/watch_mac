<?php
include 'header.php';

$con=mysqli_connect("localhost","user","pass","pbnj");
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * from host_history where mac not in (select mac from blacklist)");

echo "<div class='table-responsive'>";
echo "<table border='1' class='table'>";

$i = 0;
while($row = $result->fetch_assoc())
{
    if ($i == 0) {
      $i++;
      echo "<tr>";
      foreach ($row as $key => $value) {
        echo "<th>" . $key . "</th>";
      }
      echo "</tr>";
    }
    echo "<tr>";
    foreach ($row as $value) {
      echo "<td>" . $value . "</td>";
    }
    echo "</tr>";
}
echo "</table>";
echo "</div>";

mysqli_close($con);
include 'footer.php';
?>
