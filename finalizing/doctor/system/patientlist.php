<!DOCTYPE html>
<?php 
    include 'logincheck.php';
?>
<html lang="en">
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Curec | Curec | COVID-19 Personal Assistant</title>
    <link href="images/favicon.svg" rel="shortcut icon"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />

    <link rel="stylesheet" type="text/css" href="table/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="table/style.css">
    <link rel="stylesheet" type="text/css" href="table/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="table/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="table/buttons.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="table/responsive.bootstrap4.min.css">
    </head>
    <body>
        <br>&nbsp;&nbsp;&nbsp;
        <a href="index.php"><button type="button" class="btn btn-warning btn">
        < Back</button></a>


        <div id="pcoded" class="pcoded">
            <div class="pcoded-overlay-box"></div>
            <div class="pcoded-container navbar-wrapper">
                <div class="pcoded-main-container">
                    <div class="pcoded-wrapper">
                        <div class="pcoded-content">
                            <div class="pcoded-inner-content">
                                <div class="main-body">
                                    <div class="page-wrapper">
                                        <div class="page-body">
                                        <!-- Body Begin -->
                                           
                                              <div class="row">
                                            <div class="col-sm-12">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Patient calls and Information</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="dt-responsive table-responsive">
                                                            <table id="order-table" class="table table-striped table-bordered nowrap">
                                                                <thead>
                                                                <tr>
                                                                    <th>Patient Name</th>
                                                                    <th>Patient NIC</th>
                                                                    <th>Contact Number</th>
                                                                    <th>Diagnosis</th>
                                                                    <th>Status</th>
                                                                    <th>Date/Time</th>
                                                                    <th>Diagnosed Doctor</th>
                                                                    <th>Medical Reg. ID</th>
                                                                </tr>
                                                                </thead>
                                                                <tbody id="load_pratransactons">
                                                                  <?php
                                                                    require_once 'dbConn.php';

                                                                    $result = $conn->query("SELECT member.Name, member.NIC, member.phone, diagnose.Comment, diagnose.status, diagnose.timestamp, doctor.name, doctor.lastname, doctor.medicalRegID FROM diagnose, doctor, member WHERE diagnose.DID=doctor.DID AND diagnose.MID=member.MID ORDER BY diagnose.timestamp DESC");
                                                                    if ($result->num_rows > 0) {
                                                                        while($row = $result->fetch_assoc()) {
                                                                            echo "<tr>
                                                                                    <td>{$row['Name']}</td>
                                                                                    <td>{$row['NIC']}</td>
                                                                                    <td>{$row['phone']}</td>
                                                                                    <td>";
                                                                                    $com=$row['Comment'];
                                                                                    $comnt="";
                                                                                    switch ($com) {
                                                                                        case 'hospitalize':
                                                                                            $comnt="Hospitalize";
                                                                                            break;
                                                                                        case 'selfqrn':
                                                                                            $comnt="Self-Quarantine";
                                                                                            break;
                                                                                        case 'shouldcont':
                                                                                            $comnt="Should Continue";
                                                                                            break;
                                                                                        default:
                                                                                            $comnt="Should Continue";
                                                                                            break;
                                                                                    }

                                                                            echo "$comnt</td>
                                                                                    <td>";
                                                                                    $col=$row['status'];
                                                                                    $status="";
                                                                                    switch ($col) {
                                                                                        case '1':
                                                                                            $status="Red Noticed";
                                                                                            break;
                                                                                        case '2':
                                                                                            $status="Orange Noticed";
                                                                                            break;
                                                                                        case '3':
                                                                                            $status="Green Noticed";
                                                                                            break;
                                                                                        default:
                                                                                            $status="Green Noticed";
                                                                                            break;
                                                                                    }

                                                                            echo "$status</td>
                                                                                    <td>{$row['timestamp']}</td>
                                                                                    <td>{$row['name']} {$row['lastname']}</td>
                                                                                    <td>{$row['medicalRegID']}</td>
                                                                                </tr>";
                                                                        }
                                                                    }
                                                                ?>

                                                                </tbody>
                                                                <tfoot>
                                                                <tr>
                                                                    <th>Patient Name</th>
                                                                    <th>Patient NIC</th>
                                                                    <th>Contact Number</th>
                                                                    <th>Diagnosis</th>
                                                                    <th>Status</th>
                                                                    <th>Date/Time</th>
                                                                    <th>Diagnosed Doctor</th>
                                                                    <th>Medical Reg. ID</th>
                                                                </tr>
                                                                </tfoot>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        <!-- Body End-->
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script src="table/jquery.min.js"></script>
<script src="table/jquery.dataTables.min.js"></script>
<script src="table/dataTables.bootstrap4.min.js"></script>
<script src="table/dataTables.responsive.min.js"></script>
<script src="table/responsive.bootstrap4.min.js"></script>
<script src="table/data-table-custom.js"></script>
    </body>
</html>
