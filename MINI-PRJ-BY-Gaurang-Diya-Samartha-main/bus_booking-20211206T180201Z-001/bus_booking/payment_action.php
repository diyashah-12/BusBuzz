

<style>
body {

width: 100%;
height: 90vh;
background: url("https://i.pinimg.com/736x/68/32/e5/6832e57dedd283dee97ce81808319886.jpg") top center;
background-size: cover;
position: relative;
margin-bottom: -200px;
font-size: 26px;
}

table,tr,th,td{
            border: 1px white;
                color: white;
                font-size: 26px;
}
</style>
<?php

if(isset($_POST['search']))
{
    $valueToSearch = $_POST['valueToSearch'];
    // search in all table columns
    // using concat mysql function
    $query = "SELECT * FROM `booked` LEFT OUTER JOIN `schedule_list` ON booked.schedule_id=schedule_list.id WHERE CONCAT(`ref_no`) LIKE '%".$valueToSearch."%'";
    $search_result = filterTable($query);
}

// function to connect and execute the query
function filterTable($query)
{
    $connect = mysqli_connect("localhost", "root", "", "bus_booking");
    $filter_Result = mysqli_query($connect, $query);
    return $filter_Result;
}
?>

<!DOCTYPE html>
<html>
    <head>
    <title>Bus Buzz</title>

    </head>
    <body>
    <?php

header('index.php?page=home');
include 'header.php'; ?>
    <?php if(isset($_SESSION['login_id'])) include 'admin_navbar.php'; else include 'navbar.php'; ?>

        <form action="payment_action.php" method="post">
            <br>
            <br>
            <br>
            <br>
            <br>
            <input type="text" name="valueToSearch" placeholder="Value To Search"><br><br>
            <select>
                    <option>GPay</option>
                    <option>Net Banking </option>
            </select>
            <input type="submit" name="search" value="Submit"><br><br>
            
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>schedule_id</th>
                    <th>reference no.</th>
                    <th>name</th>
                    <th>qty</th>
                    <th>from location</th>
                    <th>to location</th>
                </tr>

      <!-- populate table from mysql database -->
                <?php while($row = mysqli_fetch_array($search_result)):?>
                <tr>
                    <td><?php echo $row['id'];?></td>
                    <td><?php echo $row['schedule_id'];?></td>
                    <td><?php echo $row['ref_no'];?></td>
                    <td><?php echo $row['name'];?></td>
                    <td><?php echo $row['qty'];?></td>
                    <td><?php echo $row['from_location'];?></td>
                    <td><?php echo $row['to_location'];?></td>

                </tr>
                <?php endwhile;?>
            </table>
        </form>
               
    </body>

</html>
