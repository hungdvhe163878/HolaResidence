<%-- 
    Document   : HomeDetails
    Created on : Mar 2, 2024, 3:09:59 PM
    Author     : FPT SHOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Details</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            .navbar {
                box-shadow: rgba(0, 0, 0, 0.20) 0px 25px 20px -20px;
                margin-bottom: 20px;
            }

            .nav-link:hover {
                border-bottom: 1px solid #cc0000;
            }

            .container {
                margin-top: 10px;
                background-color: #ffffff;
                padding: 10px;
                height: auto;
                position: relative;
            }

            .icon-container {
                border-radius: 50%;
                font-size: 25px;
                width: 50px;
                padding: 10px;
                margin-top: 10px;
            }

            .icon-container:hover {
                cursor: pointer;
                opacity: 0.5;
                box-shadow: rgba(0, 0, 0, 0.09) 0px 3px 12px;
            }

            .carousel {
                width: 800px;
                height: auto;
            }

            img {
                object-fit: cover;
            }

            .house-properties {
                margin-top: 10px;
                width: 800px;
            }

            .description {
                height: 300px;
                overflow: hidden;
                text-overflow: clip;
            }

            .description:hover {
                overflow-y: scroll;
            }

            .user-infor {
                position: absolute;
                width: 300px;
                height: auto;
                border: 1px solid #edecec;
                border-radius: 5px;
                right: 10px;
                top: 10px;
                padding: 10px;
                text-align: center;
                line-height: 5px;
            }

            .user-image {
                border-radius: 50%;
                margin-bottom: 15px;
            }

            .user-image img {
                border-radius: 50%;
                object-fit: cover;
                display: block;
                margin-left: auto;
                margin-right: auto;
            }

            .btn-info, .contact-button {
                width: 200px;
            }

            .contact-button {
                background-color: #ffffff;
                border: 1px solid #d6d4d4;
            }

            
            .site-footer {
                margin-top: 10px;
                padding-top: 10px;
                box-shadow: rgba(0, 0, 0, 0.20) 0px 25px 20px 20px;
                background-color: #f2f2f2;
            }

            .row {
                justify-content: space-around;
            }

            .site-footer a
            {
                color:#737373;
            }
            
            .site-footer a:hover
            {
                color:#3366cc;
                text-decoration:none;
            }

            .footer-links
            {
                padding-left:0;
                list-style:none
            }
            .footer-links li
            {
                display:block
            }
            .footer-links a
            {
                color:#737373
            }
            .footer-links a:active,.footer-links a:focus,.footer-links a:hover
            {
                color: #33353d;
                text-decoration:none;
            }
            .footer-links.inline li
            {
                display:inline-block
            }

            .site-footer .social-icons
            {
                text-align:right
            }
            .site-footer .social-icons a
            {
                width:40px;
                height:40px;
                line-height:40px;
                margin-left:6px;
                margin-right:0;
                border-radius:100%;
                background-color:#33353d
            }
            .copyright-text
            {
                margin:0
            }

            .social-icons
            {
                padding-left:0;
                margin-bottom:0;
                list-style:none
            }
            .social-icons li
            {
                display:inline-block;
                margin-bottom:4px
            }
            .social-icons li.title
            {
                margin-right:15px;
                text-transform:uppercase;
                color:#96a2b2;
                font-weight:700;
                font-size:13px
            }
            .social-icons a{
                background-color:#eceeef;
                color:#818a91;
                font-size:16px;
                display:inline-block;
                line-height:44px;
                width:44px;
                height:44px;
                text-align:center;
                margin-right:8px;
                border-radius:100%;
                -webkit-transition:all .2s linear;
                -o-transition:all .2s linear;
                transition:all .2s linear
            }
            .social-icons a:active,.social-icons a:focus,.social-icons a:hover
            {
                color:#fff;
                background-color:#29aafe
            }
            .social-icons.size-sm a
            {
                line-height:34px;
                height:34px;
                width:34px;
                font-size:14px
            }
            .social-icons a.facebook:hover
            {
                background-color:#3b5998
            }
            .social-icons a.twitter:hover
            {
                background-color:#00aced
            }
            .social-icons a.linkedin:hover
            {
                background-color:#007bb6
            }
            .social-icons a.dribbble:hover
            {
                background-color:#ea4c89
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="HomePage">Hola Residence</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Nhà cho thuê
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Nhà trọ, phòng trọ</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Nhà chung cư</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>

                <div class="nav-item">
                    <a href="#" class="btn btn-light btn-md " role="button" aria-pressed="true">Đăng nhập</a>
                    <a href="#" class="btn btn-light btn-md " role="button" aria-pressed="true">Đăng ký</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="user-infor">
                <div class="user-image">
                    <img src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="Property Image" width="80px;" height="80px;">
                </div>
                <div>
                    <p style="color: #999999;">Được đăng bởi</p>
                    <h4>${user.getFullname()}</h4>
                </div>
                <div>
                    <button type="button" class="btn btn-danger btn-lg" style="width: 200px;"><i class="fa-solid fa-phone-volume"></i> ${user.getPhone()}</button>
                </div>
                <div style="margin: 10px 0;">
                    <button type="button" class="btn btn-light btn-lg contact-button">Chat qua zalo</button>
                </div>
                <div>
                    <button type="button" class="btn btn-light btn-lg contact-button">Gửi mail</button>
                </div>
                <div>
                   <i class="fa-solid fa-share-nodes icon-container" title="Chia sẻ"></i>

                    <i class="fa-solid fa-triangle-exclamation icon-container" title="Báo cáo tin xấu"></i>
                </div>
            </div>
            <div style="width: 1200px;">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <div class="house-properties">
                    <h3><b>${house.getName()}</b></h3>
                    <p><i class="fa-solid fa-location-dot"></i> ${commune.getName()}, ${district.getName()}, ${province.getName()}</p>
                    <p style="border-bottom: 1px solid #edecec; margin-top: 16px; width: 800px"></p>
                    <div style="display: flex; justify-content: space-between;">
                        <span style="color: #999999;">Giá</span>
                        <span style="font-size: large; color: #cc0000;"><b>${price}/tháng</b></span>
                        <span style="color: #999999;">Diện tích</span>
                        <span style="font-size: large; color: #cc0000;"><b>${house.getAcreage()} m<sup>2</sup></b></span>
                    </div>
                    <div style="display: flex; justify-content: space-between;">
                        <span style="color: #999999;">Phòng ngủ</span>
                        <span style="font-size: large; color: #cc0000;"><b>${house.getBedroom()}</b></span>
                        <span style="color: #999999; margin-right: 25px;">Phòng tắm</span>
                        <span style="font-size: large; color: #cc0000;"><b>${house.getBathroom()}</b></span>
                    </div>
                    <p style="border-bottom: 1px solid #edecec; margin-top: 16px; width: 800px"></p>
                    <h6><b>Thông tin mô tả</b></h6>
                    <p class="description">
                        ${house.getDescription()}
                    </p>
                    <p style="border-bottom: 1px solid #edecec; margin-top: 16px; width: 800px"></p>
                    <h6><b>Xem trên bản đồ</b></h6>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59584.16344816163!2d105.55262083359368!3d21.03227725056066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBGUFQ!5e0!3m2!1svi!2s!4v1665770215510!5m2!1svi!2s" width="800" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                
                    <p style="border-bottom: 1px solid #edecec; margin-top: 16px; width: 800px"></p>
                    
                    <div style="display: flex; justify-content: space-around;">
                        <span style="color: #999999;">Ngày đăng</span>
                        <span style="color: #999999;">Ngày hết hạn</span>
                        <span style="color: #999999;">Loại tin</span>
                        <span style="color: #999999;">Mã tin</span>
                    </div>
                    <div style="display: flex; justify-content: space-around;">
                        <span style="font-size: large; color: #33353d;"><b>${house.getCreatedDate()}</b></span>
                        <span style="font-size: large; color: #33353d; margin-left: 10px;" ><b>${house.getExpiryDate()}</b></span>
                        <span style="font-size: large; color: #33353d;"><b>Hạng Bronze</b></span>
                        <span style="font-size: large; color: #33353d;"><b>${house.getId()}</b></span>
                    </div>
                </div>
            </div>
        </div>
        
        <footer class="site-footer">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <h3 style="color: #96a2b2;">Hola Residence</h3>
                    <p class="text-justify">Scanfcode.com <i>CODE WANTS TO BE SIMPLE </i> is an initiative  to help the upcoming programmers with the code. Scanfcode focuses on providing the most efficient code or snippets as the code wants to be simple. We will help programmers build up concepts in different programming languages that include C, C++, Java, HTML, CSS, Bootstrap, JavaScript, PHP, Android, SQL and Algorithm.</p>
                </div>
                <div class="col-xs-6 col-md-3">
                    <h6>Quick Links</h6>
                    <ul class="footer-links">
                        <li><a href="http://scanfcode.com/about/">About Us</a></li>
                        <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
                        <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
                        <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
                        <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
                    </ul>
                </div>
            </div>
            <hr>
            </div>
            <div class="container" style="background-color: #f2f2f2">
                <div class="row">
                    <div class="col-md-8 col-sm-6 col-xs-12">
                        <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by 
                            <a href="#">Scanfcode</a>.
                        </p>
                    </div>

                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <ul class="social-icons">
                            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                            <li hidden=""><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
                        </ul>
                    </div>
                </div>
        </footer>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/dd477f91f1.js" crossorigin="anonymous"></script>
</html>