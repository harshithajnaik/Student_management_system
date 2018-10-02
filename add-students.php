<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])=="")
    {   
    header("Location: index.php"); 
    }
    else{
if(isset($_POST['submit']))
{
$studentfirstname=$_POST['firstname'];
echo "Student first name: " .$studentfirstname;
$studentlastname=$_POST['lastname'];
echo "Student last name: " .$studentlastname;
$studentfathername=$_POST['fathername'];
echo "Father name: " .$studentfathername;
$studentmothername=$_POST['mothername'];
echo "Mother name: " .$studentmothername;
$studentaddress=$_POST['address'];
echo "Student addr: " .$studentaddress;
$studentemailid=$_POST['stdudentemailid'];
echo "Student email: " .$studentemailid;
$parentemailid=$_POST['parentemailid'];
echo "Parent email: " .$parentemailid;
$parentphonenumber=$_POST['parentphonenumber'];
echo "Parent ph no: " .$parentphonenumber;
$dt=new DateTime();
$admissiondate=$dt->format('Y-m-d H:i:s');
echo "Admiss Date: " .$admissiondate;
/*$roolid=$_POST['rollid']; */
/*$studentemail=$_POST['emailid']; */
$gender=$_POST['gender']; 
echo "Gender: " .$gender;
$class=$_POST['class'];
echo "Class: " .$class; 
$dob=$_POST['dob'];
echo "DOB: " .$dob;
$board=$_POST['board']; 
echo "Board: " .$board;
$batch=$_POST['batch'];
echo "Batch: " .$batch;
$smsservice=$_POST['smsservice'];
echo "SMS Service: " .$smsservice;
$status=1;
echo "Status: " .$status;
$sql="INSERT INTO s_idstudents(s_first_name,s_last_name,father_name,mother_name,parent_mob,s_dob,admission_date,board,res_address,batch_year,class,s_email_id,p_email_id,sms_service,gender,status) 
      VALUES('$studentfirstname','$studentlastname','$studentfathername','$studentmothername','$parentphonenumber','$dob','$admissiondate','$board','$studentaddress','$batch','$class','$studentemailid','$parentemailid','$smsservice','$gender','$status')";
$query = $dbh->prepare($sql);
$query->bindParam(':studentmothername',$studentmothername,PDO::PARAM_STR);
$query->bindParam(':studentlastname',$studentlastname,PDO::PARAM_STR);
$query->bindParam(':studentfathername',$studentfathername,PDO::PARAM_STR);
$query->bindParam(':studentmothername',$studentmothername,PDO::PARAM_STR);
$query->bindParam(':parentphonenumber',$parentphonenumber,PDO::PARAM_STR);
$query->bindParam(':dob',$dob,PDO::PARAM_STR);
$query->bindParam(':admissiondate',$admissiondate,PDO::PARAM_STR);
$query->bindParam(':board',$board,PDO::PARAM_STR);
$query->bindParam(':studentaddress',$studentaddress,PDO::PARAM_STR);
$query->bindParam(':batch',$batch,PDO::PARAM_STR);
$query->bindParam(':class',$class,PDO::PARAM_STR);
$query->bindParam(':studentemailid',$studentemailid,PDO::PARAM_STR);
$query->bindParam(':parentemailid',$parentemailid,PDO::PARAM_STR);
$query->bindParam(':smsservice',$smsservice,PDO::PARAM_STR);
$query->bindParam(':gender',$gender,PDO::PARAM_STR);
$query->bindParam(':status',$status,PDO::PARAM_STR);
//$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($query->execute())
{
$msg="Student info added successfully";
}
else 
{
$error="Something went wrong. Please try again";
}

}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SMS Admin| Student Admission< </title>
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen" >
        <link rel="stylesheet" href="css/prism/prism.css" media="screen" >
        <link rel="stylesheet" href="css/select2/select2.min.css" >
        <link rel="stylesheet" href="css/main.css" media="screen" >
        <link rel="stylesheet" href="css/bootstrap-datetimepicker/bootstrap-datetimepicker.css" media="screen">
        <script src="js/bootstrap-datetimepicker/bootstrap-datetimepicker.js">  </script>
        <script src="js/modernizr/modernizr.min.js"></script>
        <script src="js/moment/moment.js"></script>
    </head>
    <body class="top-navbar-fixed">
        <div class="main-wrapper">

            <!-- ========== TOP NAVBAR ========== -->
  <?php include('includes/topbar.php');?> 
            <!-- ========== WRAPPER FOR BOTH SIDEBARS & MAIN CONTENT ========== -->
            <div class="content-wrapper">
                <div class="content-container">

                    <!-- ========== LEFT SIDEBAR ========== -->
                   <?php include('includes/leftbar.php');?>  
                    <!-- /.left-sidebar -->

                    <div class="main-page">

                     <div class="container-fluid">
                            <div class="row page-title-div">
                                <div class="col-md-6">
                                    <h2 class="title">Student Admission</h2>
                                
                                </div>
                                
                                <!-- /.col-md-6 text-right -->
                            </div>
                            <!-- /.row -->
                            <div class="row breadcrumb-div">
                                <div class="col-md-6">
                                    <ul class="breadcrumb">
                                        <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
                                
                                        <li class="active">Student Admission</li>
                                    </ul>
                                </div>
                             
                            </div>
                            <!-- /.row -->
                        </div>
                        <div class="container-fluid">
                           
                        <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h5>Fill the Student info</h5>
                                                </div>
                                            </div>
                                            <div class="panel-body">
<?php if($msg){?>
<div class="alert alert-success left-icon-alert" role="alert">
 <strong>Well done!</strong><?php echo htmlentities($msg); ?>
 </div><?php } 
else if($error){?>
    <div class="alert alert-danger left-icon-alert" role="alert">
                                            <strong>Oh snap!</strong> <?php echo htmlentities($error); ?>
                                        </div>
                                        <?php } ?>
                                                <form class="form-horizontal" method="post">

<div class="form-group">
<label for="default" class="col-sm-2 control-label">First Name</label>
<div class="col-sm-10">
<input type="text" name="firstname" class="form-control" id="firstname" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Last Name</label>
<div class="col-sm-10">
<input type="text" name="lastname" class="form-control" id="lastname" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Father name</label>
<div class="col-sm-10">
<input type="text" name="fathername" class="form-control" id="fathername" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Mother name</label>
<div class="col-sm-10">
<input type="text" name="mothername" class="form-control" id="mothername" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Address</label>
<div class="col-sm-10">
<input type="text" name="address" class="form-control" id="address" required="required" autocomplete="off">
</div>
</div>

<!--<div class="form-group">
<label for="default" class="col-sm-2 control-label">Roll Id</label>
<div class="col-sm-10">
<input type="text" name="rollid" class="form-control" id="rollid" maxlength="5" required="required" autocomplete="off">
</div>
</div>-->

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Student Email id</label>
<div class="col-sm-10">
<input type="email" name="stdudentemailid" class="form-control" id="studentemailid" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Parent Email id</label>
<div class="col-sm-10">
<input type="email" name="parentemailid" class="form-control" id="parentemailid" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Parent Mob Number</label>
<div class="col-sm-10">
<input type="text" name="parentphonenumber" class="form-control" data-country="IN" id="parentphonenumber" required="required" autocomplete="off">
</div>
</div>

<!--<div class="form-group">
<label for="default" class="col-sm-2 control-label">Email id</label>
<div class="col-sm-10">
<input type="email" name="emailid" class="form-control" id="email" required="required" autocomplete="off">
</div>
</div>-->

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Gender</label>
<div class="col-sm-10">
<input type="radio" name="gender" value="Male" required="required" checked="">Male <input type="radio" name="gender" value="Female" required="required">Female <input type="radio" name="gender" value="Other" required="required">Other
</div>
</div>

<div class="form-group">
    <label for="default" class="col-sm-2 control-label">Class</label>
    <div class="col-sm-10">
        <select name="class" class="form-control" id="default" required="required">
            <option value="">Select Class</option>
            <?php $sql = "SELECT * from class";
            $query = $dbh->prepare($sql);
            $query->execute();
            $results=$query->fetchAll(PDO::FETCH_OBJ);
            if($query->rowCount() > 0)
            {
                foreach($results as $result)
                {   ?>
                    <option value="<?php echo htmlentities($result->id); ?>"><?php echo htmlentities($result->class_name); ?>&nbsp;
                    Section-<?php echo htmlentities($result->section); ?>
                    </option>
                    <?php 
                }
            } ?>
        </select>
    </div>
</div>

<div class="form-group">
    <label for="date" class="col-sm-2 control-label">DOB</label>
        <div class="col-sm-10">
            <input type="date" name="dob" class="form-control" id="date">
        </div>
</div>

            <!--<div class="form-group">
                <label for="default" class="col-sm-2 control-label">DOB</label>
                <div class='input-group date' id='datetimepicker1'>
                    <input type='text' class="form-control"/>
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
        <script type="text/javascript">
            $(function () {
                $('.datetimepicker1').datetimepicker({
                    format: 'yyyy-mm-dd hh:ii', 
                    autoclose: true,
                    todayBtn: true,
                    pickerPosition: "bottom-left"
                });
            });
        </script>
</div>-->

<div class="form-group">
    <label for="default" class="col-sm-2 control-label">Board</label>
        <div class="col-sm-10">
        <select name="board" class="form-control" id="sel1">
        <option value="IPUC">IPUC</option>
        <option value="IIPUC">IIPUC</option>>
      </select>
        </div>
</div>

<div class="form-group">
    <label for="default" class="col-sm-2 control-label">Batch</label>
        <div class="col-sm-10">
        <select name="batch" class="form-control" id="sel1">
        <option value="2017-2018">2017-2018</option>
        <option value="2018-2019">2018-2019</option>>
      </select>
        </div>
</div>

<div class="form-group">
    <label for="default" class="col-sm-2 control-label">SMS Service</label>
        <div class="col-sm-10">
        <label><input name="smsservice" id="smsservice" type="checkbox" value="1"></label>
        </div>
</div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" name="submit" class="btn btn-primary">Add</button>
    </div>
</div>
                </form>
            </div>
        </div>
    </div>
    <!-- /.col-md-12 -->
</div>
</div>
</div>
<!-- /.content-container -->
</div>
<!-- /.content-wrapper -->
</div>
        <!-- /.main-wrapper -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/pace/pace.min.js"></script>
        <script src="js/lobipanel/lobipanel.min.js"></script>
        <script src="js/iscroll/iscroll.js"></script>
        <script src="js/prism/prism.js"></script>
        <script src="js/select2/select2.min.js"></script>
        <script src="js/main.js"></script>
        <script>
            $(function($) {
                $(".js-states").select2();
                $(".js-states-limit").select2({
                    maximumSelectionLength: 2
                });
                $(".js-states-hide").select2({
                    minimumResultsForSearch: Infinity
                });
            });
        </script>
    </body>
</html>
<?PHP } ?>
