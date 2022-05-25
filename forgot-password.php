<?php
	session_start();
	error_reporting(0);
	include('includes/config.php');
	if(isset($_POST['submit50']))
{
	$email=$_POST['email'];
	$mobile=$_POST['mobile'];
	$newpassword=md5($_POST['newpassword']);
		$sql ="SELECT EmailId FROM tblusers WHERE EmailId=:email and MobileNumber=:mobile";
	$query= $dbh -> prepare($sql);
	$query-> bindParam(':email', $email, PDO::PARAM_STR);
	$query-> bindParam(':mobile', $mobile, PDO::PARAM_STR);
	$query-> execute();
	$results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
	$con="update tblusers set Password=:newpassword where EmailId=:email and MobileNumber=:mobile";
	$chngpwd1 = $dbh->prepare($con);
	$chngpwd1-> bindParam(':email', $email, PDO::PARAM_STR);
	$chngpwd1-> bindParam(':mobile', $mobile, PDO::PARAM_STR);
	$chngpwd1-> bindParam(':newpassword', $newpassword, PDO::PARAM_STR);
	$chngpwd1->execute();
	$msg=" Mật khẩu của bạn đã thay đổi thành công";
}
else {
	$error=" Email hoặc số điện thoại không hợp lệ";	
	}
}

?>
<!DOCTYPE HTML>
<html>
<head>
	<title>Hệ thống quản lý du lịch</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Tourism Management System In PHP" />
		<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
		<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
		<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
		<link href="css/font-awesome.css" rel="stylesheet">
	<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
	<script type="text/javascript">
function valid()
{
if(document.chngpwd.newpassword.value!= document.chngpwd.confirmpassword.value)
{
alert("Mật khẩu mới và Trường mật khẩu xác nhận không khớp nhau !!");
document.chngpwd.confirmpassword.focus();
return false;
}
return true;
}
</script>
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>
<body>
<!-- top-header -->
<div class="top-header">
<?php include('includes/header.php');?>
<div class="banner-1 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">Hệ thống quản lý du lịch</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- privacy ---->
<div class="privacy">
	<div class="container">
		<h3 class="wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">Khôi phục mật khẩu</h3>
		<form name="chngpwd" method="post" onSubmit="return valid();">
		 <?php if($error){?><div class="errorWrap"><strong>LỖI</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>THÀNH CÔNG</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
	<p style="width: 350px;">
		
			<b>Email</b>  
			<input type="email" name="email" class="form-control" id="email" placeholder="Email đăng ký" required="">
	</p> 

	<p style="width: 350px;">
		
			<b>Di động</b>  
			<input type="text" name="mobile" class="form-control" id="mobile" placeholder="Di động đăng ký" required="">
	</p> 

	<p style="width: 350px;">
			<b>Mật khẩu mới</b>   
			<input type="password" class="form-control" name="newpassword" id="newpassword" placeholder="Mật khẩu mới" required="">
	</p>

	<p style="width: 350px;">
			<b>Xác nhận mật khẩu</b>	
			<input type="password" class="form-control" name="confirmpassword" id="confirmpassword" placeholder="Xác nhận mật khẩu" required="">
	</p>

	<p style="width: 350px;">
			<button type="submit" name="submit50" class="btn-primary btn">Thay đổi</button>
	</p>
</form>
		
	</div>
</div>
<!--- /privacy ---->
<!--- footer-top ---->
<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>
</body>
</html>