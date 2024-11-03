<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (isset($_POST['submit1'])) {
    $fname = $_POST['fname'];
    $email = $_POST['email'];
    $mobile = $_POST['mobileno'];
    $subject = $_POST['subject'];
    $description = $_POST['description'];
    $sql = "INSERT INTO  yeucau(hoten,email,sodienthoai,chude,mota) VALUES(:fname,:email,:mobile,:subject,:description)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':fname', $fname, PDO::PARAM_STR);
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->bindParam(':mobile', $mobile, PDO::PARAM_STR);
    $query->bindParam(':subject', $subject, PDO::PARAM_STR);
    $query->bindParam(':description', $description, PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
    if ($lastInsertId) {
        $msg = "Gửi yêu cầu thành công.";
    } else {
        $error = "Vui lòng thử lại.";
    }
}

?>
<!DOCTYPE HTML>
<html>

<head>
    <title>Hệ thống quản lý Tour Du Lịch</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Hệ thống quản lý Tour Du Lịch In PHP" />
    <script type="applijewelleryion/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
    </script>
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
    <style>
        .errorWrap {
            padding: 10px;
            margin: 0 0 20px 0;
            background: #fff;
            border-left: 4px solid #dd3d36;
            -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        }

        .succWrap {
            padding: 10px;
            margin: 0 0 20px 0;
            background: #fff;
            border-left: 4px solid #5cb85c;
            -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        }
    </style>
</head>

<body>
    <!-- top-header -->
    <div class="top-header">
        <?php include('includes/header.php'); ?>
        <div class="banner-1 ">
            <div class="container">
                <h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
                    style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">Hệ thống quản lý tour du
                    lịch</h1>
            </div>
        </div>
        <!--- /banner-1 ---->
        <!--- privacy ---->
        <div class="privacy">
            <div class="container">
                <div class="contact-details">
                    <!-- Giới thiệu chung -->
                    <h3>Về chúng tôi</h3>
                    <p>Chúng tôi là một công ty cam kết mang đến cho khách hàng các sản phẩm và dịch
                        vụ tốt nhất. Với nhiều năm kinh nghiệm trong ngành, đội ngũ chuyên nghiệp của chúng tôi luôn
                        không ngừng cải tiến và đổi mới để đáp ứng nhu cầu của thị trường.</p>

                    <!-- Sứ mệnh của chúng tôi -->
                    <div class="mission">
                        <h2>Sứ mệnh của chúng tôi</h2>
                        <p>Chúng tôi hướng tới việc cung cấp các giải pháp công nghệ hiện đại, giúp khách hàng đạt được
                            hiệu quả tối đa trong kinh doanh và phát triển bền vững.</p>
                    </div>

                    <!-- Đội ngũ của chúng tôi -->
                    <h2 class="" style="margin-top: 50px;">Đội ngũ của chúng tôi</h2>
                    <div class="row">
                        <!-- Thành viên 1 -->
                        <div class="col-md-4 team-member">
                            <img src="https://via.placeholder.com/150" alt="CEO">
                            <h4>Nguyễn Văn A</h4>
                            <p>Giám đốc điều hành (CEO)</p>
                        </div>
                        <!-- Thành viên 2 -->
                        <div class="col-md-4 team-member">
                            <img src="https://via.placeholder.com/150" alt="CTO">
                            <h4>Trần Thị B</h4>
                            <p>Giám đốc công nghệ (CTO)</p>
                        </div>
                        <!-- Thành viên 3 -->
                        <div class="col-md-4 team-member">
                            <img src="https://via.placeholder.com/150" alt="CMO">
                            <h4>Phạm Văn C</h4>
                            <p>Giám đốc Marketing (CMO)</p>
                        </div>
                    </div>

                    <!-- Giá trị cốt lõi -->
                    <h2 class="text-center" style="margin-top: 50px;">Giá trị cốt lõi</h2>
                    <ul class="list-group">
                        <li class="list-group-item">Tận tâm với khách hàng</li>
                        <li class="list-group-item">Sáng tạo và đổi mới</li>
                        <li class="list-group-item">Chất lượng là ưu tiên hàng đầu</li>
                        <li class="list-group-item">Phát triển bền vững</li>
                        <li class="list-group-item">Tôn trọng và phát triển đội ngũ nhân viên</li>
                    </ul>

                </div>

            </div>
        </div>
        <!--- /privacy ---->
        <!--- footer-top ---->
        <!--- /footer-top ---->
        <?php include('includes/footer.php'); ?>
        <!-- signup -->
        <?php include('includes/signup.php'); ?>
        <!-- //signu -->
        <!-- signin -->
        <?php include('includes/signin.php'); ?>
        <!-- //signin -->
</body>

</html>