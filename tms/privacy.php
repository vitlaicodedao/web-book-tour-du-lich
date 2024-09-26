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
    $sql = "INSERT INTO  tblenquiry(FullName,EmailId,MobileNumber,Subject,Description) VALUES(:fname,:email,:mobile,:subject,:description)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':fname', $fname, PDO::PARAM_STR);
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->bindParam(':mobile', $mobile, PDO::PARAM_STR);
    $query->bindParam(':subject', $subject, PDO::PARAM_STR);
    $query->bindParam(':description', $description, PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
    if ($lastInsertId) {
        $msg = "Enquiry successfully submitted";
    } else {
        $error = "Something went wrong. Please try again";
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
                    style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">Tourism Management
                    System</h1>
            </div>
        </div>
        <!--- /banner-1 ---->
        <!--- privacy ---->
        <div class="privacy">
            <div class="container">
                <div class="contact-details">
                    <h3>Chính sách bảo mật</h3>
                    <p>Chúng tôi cam kết bảo vệ quyền riêng tư và bảo mật thông tin cá nhân của người dùng. Chính sách
                        bảo mật này mô tả cách chúng tôi thu thập, sử dụng và bảo vệ thông tin cá nhân của bạn khi sử
                        dụng dịch vụ của chúng tôi.</p>

                    <div class="section-title">1. Thông tin chúng tôi thu thập</div>
                    <p>Khi sử dụng trang web của chúng tôi, chúng tôi có thể thu thập các thông tin cá nhân như tên, địa
                        chỉ email, số điện thoại và các thông tin khác mà bạn cung cấp.</p>

                    <div class="section-title">2. Cách chúng tôi sử dụng thông tin</div>
                    <p>Chúng tôi sử dụng thông tin cá nhân của bạn để cung cấp và cải thiện dịch vụ của chúng tôi, gửi
                        thông báo và hỗ trợ khách hàng, cũng như để thực hiện các yêu cầu của bạn.</p>

                    <div class="section-title">3. Bảo vệ thông tin cá nhân</div>
                    <p>Chúng tôi sử dụng các biện pháp bảo mật kỹ thuật và tổ chức phù hợp để bảo vệ thông tin cá nhân
                        của bạn khỏi các hành vi truy cập trái phép, mất mát hoặc hủy hoại.</p>

                    <div class="section-title">4. Chia sẻ thông tin với bên thứ ba</div>
                    <p>Chúng tôi không chia sẻ thông tin cá nhân của bạn với bất kỳ bên thứ ba nào trừ khi được yêu cầu
                        bởi pháp luật hoặc để thực hiện các dịch vụ liên quan mà bạn đã yêu cầu.</p>

                    <div class="section-title">5. Quyền lợi của bạn</div>
                    <p>Bạn có quyền truy cập, chỉnh sửa hoặc yêu cầu xóa bỏ thông tin cá nhân của mình bất kỳ lúc nào
                        bằng cách liên hệ với chúng tôi.</p>

                    <div class="section-title">6. Thay đổi chính sách bảo mật</div>
                    <p>Chúng tôi có thể thay đổi chính sách bảo mật này theo thời gian. Mọi thay đổi sẽ được cập nhật
                        trên trang web của chúng tôi. Bạn nên kiểm tra chính sách thường xuyên để đảm bảo rằng bạn đồng
                        ý với các điều khoản mới nhất.</p>

                    <div class="section-title">7. Liên hệ</div>
                    <p>Nếu bạn có bất kỳ câu hỏi nào về chính sách bảo mật này, vui lòng liên hệ với chúng tôi qua
                        email: support@website.com hoặc qua số điện thoại: (+84) 123 456 789.</p>
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
        <!-- write us -->
</body>

</html>