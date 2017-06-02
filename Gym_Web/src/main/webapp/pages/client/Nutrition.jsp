<%@ page language="java" contentType="text/html; charset=UIT-8"
    pageEncoding="UIT-8"%>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<%@ page import="org.springframework.web.client.RestTemplate" %>
<%@ page import="UIT.SE325H22.Group2.model.ExerciseDetail" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
String id = request.getParameter("Id");
RestTemplate restTemplate = new RestTemplate();
ExerciseDetail[] listExerciseDetail = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getExerciseDetailsByMuscleId/{id}", ExerciseDetail[].class, id).getBody() ;	
request.setAttribute("listExerciseDetail", listExerciseDetail);  
	
%>
<!doctype html>
<html class="no-js" lang="">
    
<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/news.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:10:12 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Danh sách nhóm cơ</title>
        <meta name="description" content="">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">

      	<jsp:include page="/partial/client/css_client.jsp"></jsp:include> <!-- include css -->  
    </head>
    <body>
        <!-- Start wrapper -->
        <div class="wrapper">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
            <jsp:include page="/partial/client/header-top.jsp"></jsp:include> <!-- include  header-top -->  
            <!-- Start latest news area -->
            <div class="news-page-area padding-space">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 col-md-9 col-sm-9">
                            
                            <c:forEach items="${listExerciseDetail}" var="exerciseDetail"  >
								 <div class="col-lg-6 col-md-6 col-sm-6">
	                                <div class="single-news-page">
	                                    <div class="single-news">
	                                        <img src="${exerciseDetail.getExerciseDetailImage()}" alt="">
	                                        <div class="date">31<br>Jan<br>2017</div>
	                                    </div>
	                                    <div class="news-content">
	                                        <h3><a href="single-news.html">${exerciseDetail.getExerciseDetailName()}</a></h3>
	                                        <p>Bài tập làm tăng cơ ngực , nở cơ mông , đẩy cong cơ đít ...</p>
	                                        <a class="read-more" href="/SpringRestHibernateExample/pages/client/Exercise_detail.jsp?Id=${exerciseDetail.getId()}">Chi Tiết</a>
	                                    </div>
	                                </div>
	                            </div>		
							</c:forEach>     
                     
                           
                            
                        </div>
                        <jsp:include page="/partial/client/right-slidebar.jsp"></jsp:include> <!-- include slide bar page --> 
                    </div>
                </div>
            </div>
            <!-- Start latest news area -->
           <jsp:include page="/partial/client/footer.jsp"></jsp:include> <!-- include footer page -->  
        </div>
        <!-- End wrapper -->
        <a href="#" class="scrollToTop"></a>


        <jsp:include page="/partial/client/js_client.jsp"></jsp:include> <!-- include js -->  

    </body>

<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/news.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:10:20 GMT -->
</html>
