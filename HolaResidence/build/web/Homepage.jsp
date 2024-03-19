<%-- 
    Document   : Homepage
    Created on : Mar 2, 2024, 2:59:22 PM
    Author     : FPT SHOP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #ffffff;
                overflow-x: hidden;
            }

            .navbar {
                box-shadow: rgba(0, 0, 0, 0.10) 0px 25px 20px -20px;
                margin-bottom: 20px;
            }

            .container {
                margin-top: 10px;
                /*box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;*/
                border-radius: 5px;
                background-color: #ffffff;
                padding: 10px;
                height: auto;
                position: relative;
            }

            .nav-link:hover {
                border-bottom: 1px solid #cc0000;
            }

            .height{
                height: 100px;
            }

            .search{
                position: relative;
                box-shadow: 0 0 40px rgba(51, 51, 51, .1);
            }

            .search input{
                height: 50px;
                text-indent: 25px;
                border: 2px solid #d6d4d4;
            }

            .search input:focus{
                box-shadow: none;
                border: 2px solid #cc0000;
            }

            .search .fa-search{
                position: absolute;
                top: 20px;
                left: 16px;
            }

            .search .button{
                position: absolute;
                top: 0px;
                right: 0px;
                height: 50px;
                width: 110px;
                background: #cc0000;
            }

            .search .button:hover {
                background: #cc0000;
            }

            .properties-picker {
                margin-top: 5px;
                margin-right: 10px;
                padding: 5px 8px;
            }

            .container-content {
                width: 60%;
                height: auto;
                display: flex;
                padding: 12px;
                color: black;
                border: 1px solid #edecec;
                border-radius: 5px;
                color: black;
            }

            select {
                border-radius: 5px;
            }

            .image {
                width: 500px;
                height: auto;
                flex: 1;
                margin: 39px 10px 0;
            }

            .house-properties {
                flex: 2;
            }

            .description {
                height: 150px;
                overflow-y: hidden;
            }

            .user-image {
                margin-top: 20px;
            }

            .user-image img {
                border-radius: 50%;
            }

            .phone {
                background-color: #cc0000   ;
                padding: 10px 15px;
                border-radius: 5px;
                color: white;
                margin-left: 35px;
            }

            #content:hover {
                color: black;
                box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
                border-radius: 5px;

                .description {
                    overflow-y: scroll;
                    text-overflow: clip;
                }
            }

            .filter-table {
                position: absolute;
                width: 380px;
                border: 1px solid #edecec;
                border-radius: 5px;
                right: 10px;
                top: 120px;
                padding: 10px;
            }

            .filter-table ul {
                list-style: none;
            }

            .filter-table a {
                text-decoration: none;
                color: #33353d;
            }

            .filter-table a:hover {
                opacity: 0.6;
            }

            .slidecontainer {
                width: 100%;
            }

            .slider {
                -webkit-appearance: none;
                width: 55%;
                height: 10px;
                background: #d3d3d3;
                outline: none;
                opacity: 0.7;
                -webkit-transition: .2s;
                transition: opacity .2s;
                border-radius: 10px;
            }

            .slider:hover {
                opacity: 1;
            }

            .slider::-webkit-slider-thumb {
                -webkit-appearance: none;
                appearance: none;
                width: 15px;
                height: 15px;
                border-radius: 50%;
                background: #cc0000;
                cursor: pointer;
            }

            .slider::-moz-range-thumb {
                width: 25px;
                height: 25px;
                background: #04AA6D;
                cursor: pointer;
            }

            .filter-button:hover {
                cursor: pointer;
            }

            .page-link {
                color: #cc0000;
            }

            .page-link:hover {
                color: #cc0000;
                font-weight: bold;
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
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Liên hệ
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Nhà môi giới</a>
                    </li>
                </ul>

                <div class="nav-item">
                    <a href="#" class="btn btn-light btn-md " role="button" aria-pressed="true">Đăng tin</a>
                    <a href="#" class="btn btn-light btn-md " role="button" aria-pressed="true">Đăng nhập</a>
                    <a href="#" class="btn btn-light btn-md " role="button" aria-pressed="true">Đăng ký</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <form action="HomePage" method="post">
                <div class="row height d-flex justify-content-center align-items-center" style="margin-bottom: 10px; ">
                    <div class="col-md-10">
                        <div class="search">
                            <i class="fa fa-search"></i>
                            <input type="text" class="form-control" name="name" placeholder="Search name...">
                            <input type="submit" value="Search" class="btn btn-danger button" style="border: none; top">
                        </div>
                        <select name="category" id="category" class="properties-picker" style="margin-left: 22px;">
                            <option value="">Loại nhà</option>
                            <c:forEach items="${categories}" var="c"> 
                                <option value="${c.getId()}">${c.getName()}</option>
                            </c:forEach>
                        </select>
                        <select name="province" id="province" class="properties-picker">
                            <option value="0">Tỉnh/Thành phố</option>
                            <c:forEach items="${provinces}" var="p"> 
                                <option value="${p.getId()}">${p.getName()}</option>
                            </c:forEach>
                        </select>
                        <select name="district" id="district" class="properties-picker">
                            <option value="0">Quận/Huyện</option>
                            <c:forEach items="${districts}" var="d"> 
                                <option value="${d.getId()}">${d.getName()}</option>
                            </c:forEach>
                        </select>
                        <select name="commune" id="commune" class="properties-picker">
                            <option value="0">Xã/Phường</option>
                            <c:forEach items="${communes}" var="c"> 
                                <option value="${c.getId()}">${c.getName()}</option>
                            </c:forEach>
                        </select>
                        <button type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #ffffff; padding: 3px; border: 1px solid black; border-radius: 5px; margin-right: 10px;">
                            Chọn diện tích
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <div style="padding: 10px;">
                                <input type="number" placeholder="Thấp nhất" name="minAcreage" style="margin-bottom: 5px;" min="0"><br>
                                <input type="number" placeholder="Cao nhất" name="maxAcreage" min="1">
                            </div>
                        </div>
                        <button type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #ffffff; padding: 3px; border: 1px solid black; border-radius: 5px;">
                            Chọn mức giá
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <div style="padding: 10px;">
                                <input type="number" placeholder="Giá thấp nhất" name="minPrice" style="margin-bottom: 5px;" min="0"><br>
                                <input type="number" placeholder="Giá cao nhất" name="maxPrice" min="1">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div style="width: 1200px;">
                <c:choose>
                    <c:when test="${houses.isEmpty()}">
                        <h2 class="error">Empty</h2>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${houses}" var="h">
                            <a class="container-content" id="content" href="HomeDetails?id=${h.getId()}" style="text-decoration: none; color: black;">
                                <div class="image">
                                    <img src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="Property Image" width="360px;" height="auto;">
                                    <ul style="list-style-type: none; margin: 0; padding: 0; display: flex;">
                                        <li><img src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="Property Image" width="90px;" height="auto;"></li>
                                        <li><img src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="Property Image" width="90px;" height="auto;"></li>
                                        <li><img src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="Property Image" width="90px;" height="auto;"></li>
                                        <li><img src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" alt="Property Image" width="90px;" height="auto;"></li>
                                    </ul>
                                </div>
                                <div class="house-properties">
                                    <div style="display: flex; ">
                                        <div style="padding-right: 165px;"><b>${h.getName()}</b></div>
                                    </div>
                                    <div style="display: flex;">
                                        <div style="padding-right: 25px; color: #cc0000;"><b>${h.getAcreage()} m<sup>2</sup></b></div>
                                        <div style="padding-left: 50px; color: #cc0000;"><b>${currencyFormat.format(h.getPrice())}/tháng</b></div>
                                    </div>
                                    <div style="display: flex;">
                                        <div style="padding-right: 25px;">${h.getBedroom()} <i class="fa-solid fa-bed"></i></div>
                                        <div style="padding-left: 60px;">${h.getBathroom()} <i class="fa-solid fa-toilet"></i></div>
                                    </div>
                                    <div style="display: flex;">
                                        <div style=" width: 100%; font-size: smaller;"><i class="fa-solid fa-location-dot"></i> 
                                            <c:forEach items="${communes}" var="c">
                                                <c:if test="${h.getCommuneId() == c.getId()}">${c.getName()}, </c:if>
                                            </c:forEach>
                                            <c:forEach items="${districts}" var="d">
                                                <c:if test="${h.getDistrictId() == d.getId()}">${d.getName()}, </c:if>
                                            </c:forEach>
                                            <c:forEach items="${provinces}" var="p"> 
                                                <c:if test="${h.getProvinceId() == p.getId()}">${p.getName()}</c:if>
                                            </c:forEach> 
                                        </div>
                                    </div>
                                    <div class="description">
                                        ${h.getDescription()}
                                    </div>
                                    <div class="user-image">
                                        <div> 
                                            <c:forEach items="${users}" var="u"> 
                                                <c:if test="${h.getUserId() == u.getId()}">
                                                    <img src="https://nld.mediacdn.vn/2021/2/25/6-chot-1-1614262018082368411354.jpg" width="50px;" height="50px;"> 
                                                    <span>${u.getFullname()}</span> 
                                                    <span class="phone"><i class="fa-solid fa-phone-volume"></i> <b>${u.getPhone()}</b></span>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <p style="border-bottom: 1px solid #edecec; margin-top: 16px; width: 720px"></p>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </div>

            <div class="filter-table" hidden="">
                <form action="">
                    <b>Lọc theo bảng giá</b>
                    <div style="padding-bottom: 5px; ">
                        <input type="number" placeholder="Giá đầu..." name="search" style="margin-bottom: 5px;" min="0">
                        <input type="number" placeholder="Giá cuối..." name="search">
                    </div>
                    <b>Lọc theo diện tích</b>
                    <div style="padding-bottom: 5px; ">
                        <input type="number" placeholder="..." name="search" style="margin-bottom: 5px;" min="0">
                        <input type="number" placeholder="..." name="search">
                    </div>
                    <b>Lọc theo số phòng ngủ</b>
                    <div style="padding-bottom: 5px; ">
                        <input type="range" min="1" max="100" value="50" class="slider" id="myRange">  <span id="demo"></span>
                    </div>
                    <button type="submit" class="filter-button" style="border: none; border-radius: 5px; padding: 5px 10px;"><i class="fa-solid fa-filter"></i> Lọc</button>
                </form>
            </div>
            <div class="filter-table">
                <ul>
                    <b>Lọc theo bảng giá</b>
                    <li><a href="#">Dưới 1 triệu</a></li>
                    <li><a href="#">1 - 3 triệu</a></li>
                    <li><a href="#">3 - 5 triệu</a></li>
                    <li><a href="#">5 - 10 triệu</a></li>
                </ul>
            </div>
            <div class="filter-table" style="top: 300px;">
                <ul>
                    <b>Lọc theo diện tích</b>
                    <li><a href="#">Dưới 15 m<sup>2</sup></a></li>
                    <li><a href="#">15 m<sup>2</sup> - 20 m<sup>2</sup></a></li>
                    <li><a href="#">20 m<sup>2</sup> - 25 m<sup>2</sup></a></li>
                    <li><a href="#">25 m<sup>2</sup> - 30 m<sup>2</sup></a></li>
                </ul>
            </div>
            <nav aria-label="Page navigation example" style="display: flex; justify-content: center; margin-top: 26px; ">
                <ul class="pagination">
                    <li class="page-item">
                        <c:choose>
                            <c:when test="${indexPage > 1}">
                                <a class="page-link" href="HomePage?page=${indexPage - 1}" aria-label="Previous" >
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a class="page-link" aria-label="Previous" >
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                    <c:forEach begin="1" end="${endPage}" var="i">
                        <li class="page-item"><a class="page-link" href="HomePage?page=${i}">${i}</a></li>
                        </c:forEach>
                    <li class="page-item">
                        <c:choose>
                            <c:when test="${indexPage < endPage}">
                                <a class="page-link" href="HomePage?page=${indexPage + 1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a class="page-link" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </ul>
            </nav>
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
    <script>
        var slider = document.getElementById("myRange");
        var output = document.getElementById("demo");
        output.innerHTML = slider.value;

        slider.oninput = function () {
            output.innerHTML = this.value;
        };
    </script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/dd477f91f1.js" crossorigin="anonymous"></script>
</html>
