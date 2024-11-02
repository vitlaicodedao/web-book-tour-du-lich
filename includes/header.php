<?php if ($_SESSION['login']) { ?>
<div class="top-header">
    <div class="container">
        <ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
            <li class="hm"><a href="index.php"><i class="fa fa-home"></i></a></li>
            <li class="prnt"><a href="profile.php">Trang cá nhân</a></li>
            <li class="prnt"><a href="change-password.php">Thay đổi mật khẩu</a></li>
            <li class="prnt"><a href="tour-history.php">Tour đã đặt</a></li>
            <!-- <li class="prnt"><a href="issuetickets.php">Góp ý đã gửi</a></li> -->
        </ul>
        <ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s">
            <li class="tol">Xin chào: </li>
            <li class="sig"><?php echo htmlentities($_SESSION['login']); ?></li>
            <li class="sigi"><a href="logout.php">/ Đăng xuất</a></li>
        </ul>
        <div class="clearfix"></div>
    </div>
</div><?php } else { ?>
<div class="top-header">
    <div class="container">
        <ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
            <li class="hm"><a href="index.php"><i class="fa fa-home"></i></a></li>
            <li class="hm"><a href="admin/index.php">Đăng nhập Admin</a></li>
        </ul>
        <ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s">
            <li class="tol">Phone : 0777336638</li>
            <li class="sig"><a href="#" data-toggle="modal" data-target="#myModal">Đăng kí</a></li>
            <li class="sigi"><a href="#" data-toggle="modal" data-target="#myModal4">/ Đăng nhập</a></li>
        </ul>
        <div class="clearfix"></div>
    </div>
</div>
<?php } ?>
<!--- /top-header ---->
<!--- header ---->
<div class="header">
    <div class="container">
        <div class="logo wow fadeInDown animated" data-wow-delay=".5s">
            <a href="index.php">Hệ thống quản lý<span> Tour Du Lịch</span></a>
        </div>
    </div>
</div>
<!--- /header ---->
<!--- footer-btm ---->
<div class="footer-btm wow fadeInLeft animated" data-wow-delay=".5s">
    <div class="container">
        <div class="navigation">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <nav class="cl-effect-1">
                        <ul class="nav navbar-nav">
                            <li><a href="index.php">TRANG CHỦ</a></li>
                            <!-- <li><a href="about.php">CHI TIẾT</a></li> -->
                            <li><a href="package-list.php">GÓI DU LỊCH</a></li>
                            <li><a href="privacy.php">CHÍNH SÁCH BẢO MẬT</a></li>
                            <li><a href="terms.php">ĐIỀU KHOẢN SỬ DỤNG</a></li>
                            <li><a href="contact.php">THÔNG TIN LIÊN HỆ</a></li>

                            <li><a href="enquiry.php"> GÓP Ý </a>
                            <li>
                                <div class="clearfix"></div>

                        </ul>
                    </nav>
                </div><!-- /.navbar-collapse -->
            </nav>
        </div>

        <div class="clearfix"></div>
    </div>
</div>