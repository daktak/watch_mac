<?php
    //open connection to mysql db
    $connection = mysqli_connect("localhost","user","pass","pbnj") or die("Error " . mysqli_error($connection));

    //fetch table rows from mysql db
    $sql = "select monitor_list.initial as i, if(hosts.status='Up','1','0') as e from monitor_list left join hosts ON hosts.mac = monitor_list.mac";
    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));

    //create an array
    $emparray = array();
    $i=0;
    while($row =mysqli_fetch_assoc($result))
    {

        //$emparray[] = $row;
        $emparray[] = array($row["i"]=>$row["e"]);
        $i++;
    }
    $json = json_encode($emparray);
    echo "{".preg_replace('/[{]*[}]*[\[]*[\]]*/','', $json)."}";

    //close the db connection
    mysqli_close($connection);
?>

