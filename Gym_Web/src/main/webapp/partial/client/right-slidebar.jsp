<%@ page import="org.springframework.web.client.RestTemplate" %>
<%@ page import="UIT.SE325H22.Group2.model.MuscleType" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="right-sidebar">
                                <div class="single-sidebar">
                                    <h3>Search</h3>
                                    <div class="sidebar-search">
                                        <input type="text" placeholder="Search here...">
                                        <span><button type="submit"><i class="fa fa-search"></i></button></span>
                                    </div>
                                </div>
                                <div class="single-sidebar">
                                    <h3>Nhóm cơ</h3>
                                    <%
	                                    RestTemplate restTemplate = new RestTemplate();
					       				MuscleType[] listMuscleType = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllMuscleTypes", MuscleType[].class).getBody();
					       				request.setAttribute("listMuscleType", listMuscleType);
                                    %>
                                    
                                    <div class="categories">
                                        <ul>
                                        	<c:forEach items="${listMuscleType}" var="muscleType"  >
												<li><a href="/SpringRestHibernateExample/pages/client/Nutrition.jsp?Id=${muscleType.getId()}">${muscleType.getMuscleTypeName()}</a></li>
											</c:forEach>  
                                        </ul>
                                    </div>
                                </div>
                                <div class="single-sidebar sidebar-last">
                                    <h3>Archives</h3>
                                    <div class="archives-list">
                                        <table style="width:100%; border:0;">
                                            <tbody>
                                                <tr>
                                                    <td>February</td>
                                                    <td>2016<span>(3)</span></td>
                                                </tr>
                                                <tr>
                                                    <td>January</td>
                                                    <td>2016<span>(3)</span></td>
                                                </tr>
                                                <tr>
                                                    <td>March</td>
                                                    <td>2016<span>(3)</span></td>
                                                </tr>
                                                <tr>
                                                    <td>November</td>
                                                    <td>2016<span>(3)</span></td>
                                                </tr>
                                                <tr>
                                                    <td>December</td>
                                                    <td>2016<span>(3)</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>