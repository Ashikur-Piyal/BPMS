<?php

error_reporting(0);

include('includes/dbconnection.php');
?>
        <nav class="navbar-default navbar-static-side" role="navigation">
         
            <div class="sidebar-collapse">
           
                <ul class="nav" id="side-menu">
                    <li>
                      
                        <div class="user-section">
                            
                            <div class="user-section-inner">
                                <img src="assets/img/user.jpg" alt="">
                            </div>
                            <div class="user-info">
                                <?php
$aid=$_SESSION['bpmsaid'];
$sql="SELECT AdminName from  tbladmin where ID=:aid";
$query = $dbh -> prepare($sql);
$query->bindParam(':aid',$aid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                                <div><strong><?php  echo $row->AdminName;?></strong></div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                </div>
                            </div>
                            <?php $cnt=$cnt+1;}} ?>
                        </div>
                        
                      
                    </li>

                    <li class="selected">
                        <a href="dashboard.php"><i class="fa fa-dashboard fa-fw"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Category<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="add-category.php">Add Category</a>
                            </li>
                            <li>
                                <a href="manage-category.php">Manage Category</a>
                            </li>
                        </ul>
                      
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-files-o fa-fw"></i> Passes<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="add-pass.php">Add Pass</a>
                            </li>
                            <li>
                                <a href="manage-pass.php">Manage Pass</a>
                            </li>
                        </ul>
                   
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-files-o fa-fw"></i> Pages<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="aboutus.php">About Us</a>
                            </li>
                            <li>
                                <a href="contactus.php">Contact Us</a>
                            </li>
                        </ul>
                     
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-files-o fa-fw"></i> Enquiry<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="readenq.php">Read Enquiry</a>
                            </li>
                            <li>
                                <a href="unreadenq.php">Unread Enquiry</a>
                            </li>
                        </ul>
                   
                    </li>
                    
                    <li>
                        <a href="search-pass.php"><i class="fa fa-search"></i>  Search<span class="fa arrow"></span></a>
                        
                        </li>
                        <li>
                        <a href="pass-bwdates-report.php"><i class="fa fa-folder"></i>  Report of Pass<span class="fa arrow"></span></a>
                        
                        </li>

                      

                </ul>
        
            </div>
           
        </nav>