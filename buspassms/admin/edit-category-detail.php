<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['bpmsaid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_POST['submit']))
  {


 $catname=$_POST['catname'];

$eid=$_GET['editid'];
$ret="select CategoryName from tblcategory where CategoryName=:catname";
 $query= $dbh -> prepare($ret);
$query->bindParam(':catname',$catname,PDO::PARAM_STR);

$query-> execute();
     $results = $query -> fetchAll(PDO::FETCH_OBJ);
     if($query -> rowCount() == 0)
{
$sql="update tblcategory set CategoryName=:catname where ID=:eid";
$query=$dbh->prepare($sql);
$query->bindParam(':catname',$catname,PDO::PARAM_STR);

$query->bindParam(':eid',$eid,PDO::PARAM_STR);

 $query->execute();

   echo '<script>alert("Category name has been updated")</script>';
  
}
else
{

echo "<script>alert('Category Name Already Exist. Please try again');</script>";
}
}
?>

<!DOCTYPE html>
<html>

<head>
    
    <title>Bus Pass Management System | Update Category</title>
   
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
   <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />



</head>

<body>

    <div id="wrapper">
     
      <?php include_once('includes/header.php');?>
  
        <?php include_once('includes/sidebar.php');?>
   
          <div id="page-wrapper">
            <div class="row">
          
                <div class="col-lg-12">
                    <h1 class="page-header">Update Category</h1>
                </div>
       
            </div>
            <div class="row">
                <div class="col-lg-12">
                 
                    <div class="panel panel-default">
                       
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form method="post" enctype="multipart/form-data"> 
                                      <?php
$eid=$_GET['editid'];
$sql="SELECT * from  tblcategory where ID=$eid";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                                    
    <div class="form-group"> <label for="exampleInputEmail1">Category Name</label> <input type="text" name="catname" value="<?php  echo $row->CategoryName;?>" class="form-control" required='true'> </div>
   
     <?php $cnt=$cnt+1;}} ?> 
     <p style="padding-left: 450px"><button type="submit" class="btn btn-primary" name="submit" id="submit">Update</button></p> </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                 
                </div>
            </div>
        </div>
   

    </div>
   
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>

</body>

</html>
<?php }  ?>