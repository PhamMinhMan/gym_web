<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.springframework.web.client.RestTemplate" %>
<%@ page import="UIT.SE325H22.Group2.model.ExerciseDetail" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
<html class="no-js" lang="">
    
<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/index4.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:07:03 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>GymEdge | Home Page 4</title>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<jsp:include page="/partial/client/css_client.jsp"></jsp:include> <!-- include css -->   
       
    </head>
    <body>
    <c:set var="id" value="Hello World" scope="request"></c:set>
	<c:out value="${requestScope.id }" ></c:out>
        <!-- Start wrapper -->
        <div class="wrapper">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
            <!-- Preloader Start Here -->
            <div id="preloader"></div>
            <!-- Preloader End Here -->
            <!-- Start Header area -->
            <header class="main-header header-style4"  id="sticker">
                <div class="header-top-bar" style="margin-bottom: 0px;">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="top-bar-left">
                                    <ul>
                                        <li><i class="fa fa-phone" aria-hidden="true"></i><a href="Tel:+1234567890"> + 123 456 78910 </a></li>
                                        <li><i class="fa fa-envelope" aria-hidden="true"></i><a href="#">info@academics.com</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="header-top-right">
                                    <ul>
                                        <li>
                                            <div class="header-top-search search-box">
                                                <form>
                                                <input class="search-text" type="text"  placeholder="Search Here..." >
                                                <a class="search-button" href="#">
                                                    <i class="fa fa-search" aria-hidden="true"></i>
                                                </a>
                                                </form>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#" class="cart-area floatright">
                                                <i class="fa fa-shopping-cart"></i><span>2</span>
                                            </a>
                                            <ul>
                                                <li>
                                                    <div class="cart-single-product">
                                                        <div class="media">
                                                        <div class="pull-left cart-product-img">
                                                            <a href="#">
                                                                <img class="media-object" src="/SpringRestHibernateExample/resources/client/img/product/cart-img.png" alt="product">
                                                            </a>
                                                        </div>
                                                        <div class="media-body cart-content">
                                                            <h4 class="media-heading"><a href="#">Product Title Here</a></h4>
                                                            <a href="#" class="trash"><i class="fa fa-trash-o"></i></a>
                                                            <p>Quantity : 1</p>
                                                            <div class="cart-product-price">
                                                                <a href="#">$49</a>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="cart-single-product">
                                                        <div class="media">
                                                        <div class="pull-left cart-product-img">
                                                            <a href="#">
                                                                <img class="media-object" src="/SpringRestHibernateExample/resources/client/img/product/cart-img.png" alt="product">
                                                            </a>
                                                        </div>
                                                        <div class="media-body cart-content">
                                                            <h4 class="media-heading"><a href="#">Product Title Here</a></h4>
                                                            <a href="#" class="trash"><i class="fa fa-trash-o"></i></a>
                                                            <p>Quantity : 1</p>
                                                            <div class="cart-product-price">
                                                                <a href="#">$99</a>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li><a href="http://www.radiustheme.com/demo/html/gymedge/multi-page/checkout.html" class="checkout-button">Checkout</a></li>        
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header-top-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-sm-2">
                                <div class="logo-area">
                                    <a href="index.html"><img src="/SpringRestHibernateExample/resources/client/img/logo-white.png" alt="logo"></a>
                                </div>
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-10">
                                <div class="main-menu">
                                    <nav>
                                        <ul>
                                           <li class="active"><a href="#">Home</a>
                                                <ul class="mega-menu-dropdown2">
                                                    <li class="single-mega-menu">
                                                        <a href="index.html">Home 1</a>            
                                                        <a href="index2.html">Home 2</a>            
                                                        <a href="index3.html">Home 3</a>            
                                                        <a href="index4.html">Home 4</a>            
                                                    </li>
                                                    <li class="single-mega-menu">
                                                       <a href="../one-page/index.html">Home 1 (One Page)</a>            
                                                        <a href="../one-page/index2.html">Home 2 (One Page)</a>            
                                                        <a href="../one-page/index3.html">Home 3 (One Page)</a>            
                                                        <a href="../one-page/index4.html">Home 4 (One Page)</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="#">Classes</a>
                                                <ul>
                                                    <li><a href="classes.html">Classes</a></li>
                                                    <li><a href="single-classes.html">Single Classes</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="schedule.html">Schedule</a></li>
                                            <li><a href="trainer.html">Trainers</a></li>
                                            <li><a href="#">News</a>
                                                <ul>
                                                    <li><a href="news.html">News</a></li>
                                                    <li><a href="single-news.html">News Details</a></li>
                                                    <li class="has-child-menu"><a href="#">Demo Menu</a>
                                                        <ul class="thired-level">
                                                            <li><a href="#">Demo Menu 1</a></li>
                                                            <li><a href="#">Demo Menu 2</a></li>
                                                            <li><a href="#">Demo Menu 3</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Pages</a>
                                                <ul class="mega-menu-dropdown">
                                                    <li class="single-mega-menu">
                                                        <a href="index.html">Home</a>
                                                        <a href="about.html">About</a>                 
                                                        <a href="classes.html">Classes</a>
                                                        <a href="schedule.html">Schedule</a>
                                                        <a href="gallery.html">Gallery</a>              
                                                    </li>
                                                    <li class="single-mega-menu">
                                                        <a href="trainer.html">Our Trainer</a>
                                                        <a href="single-trainer.html">Trainer Details</a>         
                                                        <a href="single-classes.html">Single Classes</a> 
                                                        <a href="news.html">News</a>
                                                        <a href="single-news.html">News Details</a>
                                                    </li>
                                                    <li class="single-mega-menu">
                                                        <a href="store-grid.html">Store Grid View</a>
                                                        <a href="store-list.html">Store List View</a>
                                                        <a href="single-product.html">Single product</a>
                                                        <a href="page.html">Single Page</a> 
                                                        <a href="404.html">404 Page</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End header Top Area -->
                <!-- mobile-menu-area start -->
                <div class="mobile-menu-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mobile-menu">
                                    <nav id="dropdown">
                                        <ul>
                                            <li><a href="#">Home</a>
                                                <ul>
                                                    <li><a href="index.html">Home 01</a></li>
                                                    <li><a href="index2.html">Home 02</a></li>
                                                    <li><a href="index3.html">Home 03</a></li>
                                                    <li><a href="index4.html">Home 04</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="classes.html">Classes</a>
                                                <ul>
                                                    <li><a href="single-classes.html">Single Classes</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="schedule.html">Schedule</a></li>
                                            <li><a href="news.html">News</a>
                                                <ul>
                                                    <li><a href="single-news.html">News Details</a></li>
                                                    <li class="has-child-menu"><a href="#">Demo Menu</a>
                                                        <ul class="thired-level">
                                                            <li><a href="#">Demo Menu 1</a></li>
                                                            <li><a href="#">Demo Menu 2</a></li>
                                                            <li><a href="#">Demo Menu 3</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="page.html">Pages</a>
                                                <ul class="mega-menu-area">
                                                    <li><a href="trainer.html">Our Trainer</a></li>
                                                    <li><a href="single-trainer.html">Trainer Details</a></li>
                                                    <li><a href="gallery.html">Gallery</a></li>
                                                    <li><a href="store-grid.html">Store Grid View</a></li>
                                                    <li><a href="store-list.html">Store List View</a></li>
                                                    <li><a href="single-product.html">Single product</a></li>
                                                    <li><a href="404.html">404 Page</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Contact</a></li>                              
                                        </ul>
                                    </nav>
                                </div>                  
                            </div>
                        </div>
                    </div>
                </div>
                <!-- mobile-menu-area end --> 
            </header>
            <!-- End Header area -->
            <!-- Main Banner area -->
            <div class="main-banner slider-top-space-header4">
                <img src="/SpringRestHibernateExample/resources/client/img/slides/4-1.jpg" alt="image" class="img-responsive"/>
                <div class="main-banner-inner">
                    <div class="main-banner-top-title">Hi</div>
                    <h1><span>I’m</span> John Smith</h1>
                    <p>Simply dummy text of the printing and typesetting industry ared deartyLorem Ipsum has been the idustry's standard  type speaty ecimen bookly five centurie.</p>
                    <ul class="main-banner-link">
                        <li>
                            <a class="facebook" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        </li>
                        <li>
                            <a class="twitter" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        </li>
                        <li>
                            <a class="linkedin" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </li>
                        <li>
                            <a class="skype" href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
                        </li>
                    </ul>
                    <div class="button"><a href="#" class="btn custom-button" data-title="Join With Us">Join With Us</a></div>
                </div>
            </div>
            <!-- Main Banner area-->
            <!-- Start being body builder area -->
            <div class="what-i-do-area">
                <div class="container">
                    <div class="row what-i-do-top">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="what-i-do-content">
                                <h2>What I<span> Do?</span></h2>
                                <p>Rmply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  type and scrambled it to make a type specimen book. </p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="what-i-do-img">
                               <img src="/SpringRestHibernateExample/resources/client/img/what-do.png" class="img-responsive" alt="What I Do">
                            </div>
                        </div>
                    </div>
                    <div class="row what-i-do-bottom">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="featured-box hvr-bounce-to-right">
                                 <i class="fa fa-user" aria-hidden="true"></i>
                                 <h3>12</h3> 
                                 <p>Experience</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="featured-box hvr-bounce-to-right">
                                <i class="fa fa-video-camera" aria-hidden="true"></i>
                                <h3>500+</h3> 
                                <p>Youtube Subscribers</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="featured-box hvr-bounce-to-right">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                <h3>4000+</h3>
                                <p>People Like</p> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End being body builder area -->            
            <!-- Start feature classes area -->
            <div class="feature-classes-area3 nav-on-hover bg-secondary">
                <div class="container">
                    <h2 class="section-title-default title-bar-high">My Featured Classes</h2>
                    <p class="sub-title-default">Rmply dummy text of the printing and typesetting industry dorem Ipsum has been the industry's standard dummy text ever since thewhen an unknown printer took a gal survived five centuries.</p>
                </div>
                <div class="container">
                    <div class="gym-carousel nav-control-middle"
                        data-loop="true"
                        data-items="4"
                        data-margin="15"
                        data-autoplay="false"
                        data-autoplay-timeout="10000"
                        data-smart-speed="2000"
                        data-dots="false"
                        data-nav="true"
                        data-nav-speed="false"
                        data-r-x-small="1"
                        data-r-x-small-nav="true"
                        data-r-x-small-dots="false"
                        data-r-x-medium="2"
                        data-r-x-medium-nav="true"
                        data-r-x-medium-dots="false"
                        data-r-small="2"
                        data-r-small-nav="true"
                        data-r-small-dots="false"
                        data-r-medium="3"
                        data-r-medium-nav="true"
                        data-r-medium-dots="false"
                        data-r-large="4"
                        data-r-large-nav="true"
                        data-r-large-dots="false">
                        <%
                        	RestTemplate restTemplate = new RestTemplate();
                            ExerciseDetail[] listExerciseDetail = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllExerciseDetails", ExerciseDetail[].class).getBody();
                            request.setAttribute("listExerciseDetail", listExerciseDetail);
                            for(ExerciseDetail exerciseDetail : listExerciseDetail )
				       		{ 				
         				%>
                                   
				         <%
				       		}
				         %> 
				          <c:forEach items="${listExerciseDetail}" var="exerciseDetail"  >
								<div class="single-product-classes3">
			                            <div class="single-product hvr-bounce-to-bottom">
			                                <a href="#"><img class="img-responsive" src="${exerciseDetail.getExerciseDetailImage()}" alt="${exerciseDetail.getExerciseDetailName()}"></a>
			                                <div class="overlay-btn">
			                                    <a href="#" class="btn-details">Details</a>
			                                </div>
			                            </div>
			                            <div class="product-content">
			                                <h3><a href="/SpringRestHibernateExample/pages/client/Exercise_detail.jsp?Id=${exerciseDetail.getId()}">${exerciseDetail.getExerciseDetailName()}</a></h3>
			                                <ul>
			                                    <li><i class="fa fa-calendar" aria-hidden="true"></i>16 Decmber, 2017</li>
			                                    <li><i class="fa fa-clock-o" aria-hidden="true"></i>09.00am - 10.00am</li>
			                                </ul>
			                            </div>
                       			 </div>
							</c:forEach>         
                    
                        
                    </div>
                </div>
            </div>
            <!-- End feature product area -->
            <!-- Start class schedule area -->
            <div class="class-schedule">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <h2 class="section-title-white title-bar-high">Featured Classes</h2>
                            <p class="sub-title-white">Rmply dummy text of the printing and typesetting industry dorem Ipsum has been the industry's standard dummy text ever since thewhen an unknown printer took a gal survived five centuries.</p>
                            <div class="class-schedule-wrap">
                                <!-- Tabs -->
                                <ul id="myTab" class="nav nav-tabs">
                                    <li class="active"><a href="#monday" data-toggle="tab">Monday</a></li>
                                    <li><a href="#tuesday" data-toggle="tab">Tuesday</a></li>
                                    <li><a href="#wednesday" data-toggle="tab">Wednesday</a></li>
                                    <li><a href="#monday" data-toggle="tab">Thursday</a></li>
                                    <li><a href="#tuesday" data-toggle="tab">Friday</a></li>
                                    <li><a href="#wednesday" data-toggle="tab">Saturday</a></li>
                                    <li><a href="#monday" data-toggle="tab">Sunday</a></li>
                                </ul>
                                <div id="myTabContent" class="tab-content class-schedule-tab">
                                    <div class="tab-pane fade in active wow fadeInUp" id="monday">
                                        <ul class="odd">
                                            <li>Yoga</li>
                                            <li>10.00 am - 12.00 pm</li>
                                            <li>Robert Smith</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="even">
                                            <li>Running</li>
                                            <li>09.00 am - 12.00 pm</li>
                                            <li>Petter john</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="odd">
                                            <li>Gym</li>
                                            <li>10.00 am - 12.00 pm</li>
                                            <li>Kazi Fahim</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="even">
                                            <li>Free Hand</li>
                                            <li>09.00 am - 12.00 pm</li>
                                            <li>Jessy Reo</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="odd">
                                            <li>Weight Lifting</li>
                                            <li>10.00 am - 12.00 pm</li>
                                            <li>Zara Keron</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="even">
                                            <li>Fitness</li>
                                            <li>09.00 am - 12.00 pm</li>
                                            <li>Jack Sparrow</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-pane fade wow fadeInDown" id="tuesday">
                                        <ul class="odd">
                                            <li>Yoga</li>
                                            <li>10.00 am - 12.00 pm</li>
                                            <li>Robert Smith</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="even">
                                            <li>Running</li>
                                            <li>09.00 am - 12.00 pm</li>
                                            <li>Petter john</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="odd">
                                            <li>Gym</li>
                                            <li>10.00 am - 12.00 pm</li>
                                            <li>Kazi Fahim</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="even">
                                            <li>Free Hand</li>
                                            <li>09.00 am - 12.00 pm</li>
                                            <li>Jessy Reo</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="odd">
                                            <li>Weight Lifting</li>
                                            <li>10.00 am - 12.00 pm</li>
                                            <li>Zara Keron</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-pane fade wow fadeInUp" id="wednesday">
                                        <ul class="odd">
                                            <li>Yoga</li>
                                            <li>10.00 am - 12.00 pm</li>
                                            <li>Robert Smith</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="even">
                                            <li>Running</li>
                                            <li>09.00 am - 12.00 pm</li>
                                            <li>Petter john</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="odd">
                                            <li>Gym</li>
                                            <li>10.00 am - 12.00 pm</li>
                                            <li>Kazi Fahim</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                        <ul class="even">
                                            <li>Free Hand</li>
                                            <li>09.00 am - 12.00 pm</li>
                                            <li>Jessy Reo</li>
                                            <li><a href="#">Join Now!</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End class schedule area -->            
            <!-- Why Choose 2 Area Start -->
            <div class="why-choose2-area bg-secondary">
                <div class="side-text"><span><span>G</span>ym</span> Edge</div>
                <div class="container">
                    <div class="why-choose2-wrapper">
                        <div class="why-choose-content">
                            <h2>Why Choose ME?</h2>
                            <p>Rimply dummy text of the printing and typesetting indust ryorem Ipsum standard dummyn an unknown printer took.</p>
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a aria-expanded="false" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                                <span>01.</span> Addition of Energy
                                            </a>
                                        </h3>
                                    </div>
                                    <div aria-expanded="false" id="collapseOne" role="tabpanel" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Simply dummy text of the printing and typesetting industryorem Ipsum has been the industry's standard dummy text ever since  when an unknown printer took a galley. 
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a aria-expanded="false" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                                <span>02.</span> Beauty of Body
                                            </a>
                                        </h3>
                                    </div>
                                    <div aria-expanded="false" id="collapseTwo" role="tabpanel" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            Simply dummy text of the printing and typesetting industryorem Ipsum has been the industry's standard dummy text ever since  when an unknown printer took a galley. 
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a aria-expanded="false" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                                <span>03.</span> Mind and Soul
                                            </a>
                                        </h3>
                                    </div>
                                    <div aria-expanded="false" id="collapseThree" role="tabpanel" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Simply dummy text of the printing and typesetting industryorem Ipsum has been the industry's standard dummy text ever since  when an unknown printer took a galley. 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="why-choose-img">
                            <img src="/SpringRestHibernateExample/resources/client/img/being-builder.png" alt="being-builder">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Why Choose 2 Area End Here -->              
            <!-- Start Expert trainers area -->
            <div class="expert-trainer-area2">
                <div class="container">
                    <h2 class="section-title-default title-bar-high">EXPERT TRAINERS</h2>
                    <p class="sub-title-default">Rmply dummy text of the printing and typesetting industry dorem Ipsum has been the industry's standard dummy text ever since thewhen an unknown printer took a gal survived five centuries.</p>
                </div> 
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="trainer-box2">
                                <div class="trainer-img-holder">
                                    <img src="/SpringRestHibernateExample/resources/client/img/trainers/circle2.jpg" class="img-responsive" alt="team">
                                    <ul class="trainer-social">
                                        <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    </ul>                                
                                </div>                                
                                <div class="trainer-content-holder">
                                    <h3><a href="#">Henry Elizabeth</a></h3>
                                    <p>Fitness</p>                                              
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="trainer-box2">
                                <div class="trainer-img-holder">
                                    <img src="/SpringRestHibernateExample/resources/client/img/trainers/circle1.jpg" class="img-responsive" alt="team">
                                    <ul class="trainer-social">
                                        <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    </ul>                                
                                </div>                                
                                <div class="trainer-content-holder">
                                    <h3><a href="#">John Micle</a></h3>
                                    <p>Fitness</p>                                              
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="trainer-box2">
                                <div class="trainer-img-holder">
                                    <img src="/SpringRestHibernateExample/resources/client/img/trainers/circle3.jpg" class="img-responsive" alt="team">
                                    <ul class="trainer-social">
                                        <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    </ul>                                
                                </div>                                
                                <div class="trainer-content-holder">
                                    <h3><a href="#">Susana Deo</a></h3>
                                    <p>Fitness</p>                                              
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="trainer-box2">
                                <div class="trainer-img-holder">
                                    <img src="/SpringRestHibernateExample/resources/client/img/trainers/circle4.jpg" class="img-responsive" alt="team">
                                    <ul class="trainer-social">
                                        <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    </ul>                                
                                </div>                                
                                <div class="trainer-content-holder">
                                    <h3><a href="#">Alexander</a></h3>
                                    <p>Fitness</p>                                              
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Expert tainers area --> 
            <!-- Start Fitness class summer area -->
            <div class="fitness-summer-area2 padding-space">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="fitness-summer">
                                <div class="fitness-content">
                                    <h3><span>Fitness Classes</span> This Summer.</h3>
                                    <p>Pay Now and<br> Get <span>35%</span> Discount</p>
                                    <a class="custom-button" data-title="Become A Member" href="#">Become A Member</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Fitness class summer area --> 
            <!-- Start what clients say area  -->
            <div class="what-client-area">
                <div class="container">
                    <div class="gym-carousel dot-control"
                        data-loop="true"
                        data-items="2"
                        data-margin="0"
                        data-autoplay="false"
                        data-autoplay-timeout="10000"
                        data-smart-speed="2000"
                        data-dots="false"
                        data-nav="true"
                        data-nav-speed="false"
                        data-r-x-small="1"
                        data-r-x-small-nav="false"
                        data-r-x-small-dots="true"
                        data-r-x-medium="1"
                        data-r-x-medium-nav="false"
                        data-r-x-medium-dots="true"
                        data-r-small="2"
                        data-r-small-nav="false"
                        data-r-small-dots="true"
                        data-r-medium="2"
                        data-r-medium-nav="false"
                        data-r-medium-dots="true"
                        data-r-large="2"
                        data-r-large-nav="false"
                        data-r-large-dots="true">
                        <div class="single-client-say">
                            <div class="pull-left client-picture">
                                <img src="/SpringRestHibernateExample/resources/client/img/client1.jpg" alt="client1">
                            </div>
                            <div class="media-body client-content">
                                <h3>Honey Jisa <span> / CEO</span></h3>
                                <p>Lorem ipsum dolor sit amet, consectet ad elit sed diam nonummy nibh euismod tincidunt ut laoreet dolore magnaLorem ipsum dolor sit amet, consectet ad elit sed onummy.</p>
                            </div>
                        </div>
                        <div class="single-client-say">
                            <div class="pull-left client-picture">
                                <img src="/SpringRestHibernateExample/resources/client/img/client2.jpg" alt="client2">
                            </div>
                            <div class="media-body client-content">
                                <h3>Tahmid Alom <span> / Founder</span></h3>
                                <p>Lorem ipsum dolor sit amet, consectet ad elit sed diam nonummy nibh euismod tincidunt ut laoreet dolore magnaLorem ipsum dolor sit amet, consectet ad elit sed onummy.</p>
                            </div>
                        </div>
                        <div class="single-client-say">
                            <div class="pull-left client-picture">
                                <img src="/SpringRestHibernateExample/resources/client/img/client1.jpg" alt="client1">
                            </div>
                            <div class="media-body client-content">
                                <h3>Honey Jisa <span> / CEO</span></h3>
                                <p>Lorem ipsum dolor sit amet, consectet ad elit sed diam nonummy nibh euismod tincidunt ut laoreet dolore magnaLorem ipsum dolor sit amet, consectet ad elit sed onummy.</p>
                            </div>
                        </div>
                        <div class="single-client-say">
                            <div class="pull-left client-picture">
                                <img src="/SpringRestHibernateExample/resources/client/img/client2.jpg" alt="client2">
                            </div>
                            <div class="media-body client-content">
                                <h3>Honey Jisa <span> / CEO</span></h3>
                                <p>Lorem ipsum dolor sit amet, consectet ad elit sed diam nonummy nibh euismod tincidunt ut laoreet dolore magnaLorem ipsum dolor sit amet, consectet ad elit sed onummy.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End what clients say area --> 
            <!-- Start latest news area -->
            <div class="latest-news-area bg-secondary">
                <div class="container">      
                    <h2 class="section-title-default title-bar-high">Latest News</h2>
                    <p class="sub-title-default">Rmply dummy text of the printing and typesetting industry dorem Ipsum has been the industry's standard dummy text ever since thewhen an unknown printer took a gal survived five centuries.</p>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="single-latest-news2">
                                <div class="single-news">
                                    <div class="single-image hvr-shutter-out-horizontal">
                                        <img src="/SpringRestHibernateExample/resources/client/img/news/1.jpg" alt="news1" class="img-responsive">
                                        <a href="#"><i class="fa fa-link" aria-hidden="true"></i></a>
                                    </div>
                                    <div class="date">20<br>Jan<br>2016</div>
                                </div>
                                <div class="news-content">
                                    <h3><a href="single-news.html">Beginer Yoga</a></h3>
                                    <p>Timply dummy text of the printing and typery esetting industry koremn.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="single-latest-news2">
                                <div class="single-news">
                                    <div class="single-image hvr-shutter-out-horizontal">
                                        <img src="/SpringRestHibernateExample/resources/client/img/news/2.jpg" alt="news1" class="img-responsive">
                                        <a href="#"><i class="fa fa-link" aria-hidden="true"></i></a>
                                    </div>
                                    <div class="date">20<br>Jan<br>2016</div>
                                </div>
                                <div class="news-content">
                                    <h3><a href="single-news.html">Free Hand</a></h3>
                                    <p>Timply dummy text of the printing and typery esetting industry koremn.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="single-latest-news2">
                                <div class="single-news">
                                    <div class="single-image hvr-shutter-out-horizontal">
                                        <img src="/SpringRestHibernateExample/resources/client/img/news/3.jpg" alt="news1" class="img-responsive">
                                        <a href="#"><i class="fa fa-link" aria-hidden="true"></i></a>
                                    </div>
                                    <div class="date">20<br>Jan<br>2016</div>
                                </div>
                                <div class="news-content">
                                    <h3><a href="single-news.html">Body Building</a></h3>
                                    <p>Timply dummy text of the printing and typery esetting industry koremn.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End latest news area -->            
            <jsp:include page="/partial/client/footer.jsp"></jsp:include> <!-- include footer page -->            
            <!-- End copyright area -->
        </div>
        <!-- End wrapper -->
        <a href="#" class="scrollToTop"></a>

       
       	<jsp:include page="/partial/client/js_client.jsp"></jsp:include> <!-- include js -->  

    </body>

<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/index4.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:07:09 GMT -->
</html>
