<%-- 
    Document   : feedback
    Created on : Jun 22, 2022, 9:38:10 PM
    Author     : SE150436 - Hoàng Quang Hòa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- Css -->
        <link href="<c:url value="/css/employee.css"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/css/modal.css"/>" rel="stylesheet" type="text/css" />
        <!--Javascript-->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <i class='bx bxs-smile'></i>
                <span class="text">BDDentist</span>
            </a>
            <ul class="side-menu top">
                <form action="MainController" method="POST">
                    <input type="hidden" value="${DOCTOR.id}" name="doctorID"/>
                    <li class="active">
                        <a href="#">
                            <i class='bx bxs-dashboard' ></i>
                            <span class="text">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class='bx bxs-shopping-bag-alt' ></i>
                            <button type="submit" name="action" value="ViewAllAppoinment" class="text"><span>Appoinments</span></button>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class='bx bxs-message-dots' ></i>
                            <button type="submit" name="action" value="ViewAllFeedback" class="text"><span>Feedbacks</span></button>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class='bx bxs-briefcase'></i>
                            <button type="submit" name="action" value="ViewAllService" class="text"><span>Services</span></button>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class='bx bxs-news'></i>
                            <button type="submit" name="action" value="ViewAllService" class="text"><span>News</span></button>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class='bx bxs-group' ></i>
                            <span class="text">Team</span>
                        </a>
                    </li>
                </form>			
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="#">
                        <i class='bx bxs-cog' ></i>
                        <span class="text">Settings</span>
                    </a>
                </li>
                <li>
                    <a href="login.jsp" class="logout">
                        <i class='bx bxs-log-out-circle' ></i>
                        <span class="text">Logout</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- SIDEBAR -->



        <!-- CONTENT -->
        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <i class='bx bx-menu' ></i>
                <a href="#" class="nav-link">Deleted feedback</a>
                <form action="#">
                    <div class="form-input">
                        <input type="search" placeholder="Search...">
                        <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
                    </div>
                </form>
                <input type="checkbox" id="switch-mode" hidden>
                <label for="switch-mode" class="switch-mode"></label>
                <a href="#" class="notification">
                    <i class='bx bxs-bell' ></i>
                    <span class="num">8</span>
                </a>
                <a href="#" class="profile">
                    <img src="img/people.png">
                </a>
            </nav>
            <!-- NAVBAR -->

            <!-- MAIN -->
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Deleted Feedback</h1>
                        <ul class="breadcrumb">
                            <li>
                                <a class="active" href="ViewAllFeedbackController">Feedback</a>
                            </li>
                            <li><i class='bx bx-chevron-right' ></i></li>
                            <li>
                                <a class="active" href="#">Deleted feedback</a>
                            </li>
                        </ul>
                    </div>
                </div>


                <div class="table-data">
                    <div class="order">
                        <div class="head">
                            <h3>Deleted Feedback</h3>
                            <i class='bx bx-search' ></i>
                            <form action="MainController" method="POST">                              
                                <button type="submit" name="action" value="ViewAvailableFeedback" style="background: #4faeff; padding: 4px; color: white; border-radius: 6px;  font-size: 17px; cursor: pointer; border: 1px solid white;">Available Feedbacks</button>
                            </form>
                            <form action="MainController" method="POST">                              
                                <button type="submit" name="action" value="ViewDeletedFeedback" style="background: #4faeff; padding: 4px; color: white; border-radius: 6px;  font-size: 17px; cursor: pointer; border: 1px solid white;">Deleted Feedbacks</button>
                            </form>
                            <form action="MainController" method="POST">
                                <select id="cars" name="doctorID" style="border: 2px solid blue; outline: none; border-radius: 7px; padding: 4px; color: blue; margin-left: 15px;">
                                    <option value="1">Calvin Carlo</option>
                                    <option value="2">Cristino Murphy</option>
                                    <option value="3">Alia Reddy</option>
                                    <option value="4">Toni Kovar</option>
                                    <option value="5">Jessica McFarlane</option>
                                    <option value="6">Elsie Sherman</option>
                                    <option value="7">Bertha Magers</option>
                                    <option value="8">Louis Batey</option>
                                </select>
                                <button type="submit" name="action" value="ViewDeletedFeedbackByDoctorID" style="border: none; font-size: 18px; cursor: pointer;"><i class='bx bx-filter' ></i></button>
                            </form>
                        </div>
                        <h5 style="color: green;">${success}</h5>
                        <h5 style="color: green;">${update}</h5>

                        <c:if test="${LIST_ALL_COMMENT != null}">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Full Name</th>
                                        <th>Date</th>
                                        <th>Content</th>
                                        <th>Rate</th>
                                        <th>Status</th>
                                        <th>Doctor</th>
                                        <th>Restore</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="listAllDeletedComment" items="${LIST_ALL_DELETED_COMMENT}" varStatus="loop">
                                    <form action="MainController" method="POST">
                                        <tr>
                                        <input type="hidden" value="${listAllDeletedComment.commentID}" name="commentID"/> 
                                        <td>${loop.count}</td>
                                        <td>
                                            <p style="font-weight: 600; color: #113355;">${listAllDeletedComment.name}</p>
                                        </td>
                                        <td>${listAllDeletedComment.cmtTime}</td>
                                        <td style="font-weight: 500; color: #2eb7e5;"><span>${listAllDeletedComment.contentCmt}</span></td>
                                        <td><span class="status process" style="color: black;">${listAllDeletedComment.rate}</span></td>
                                        <td><span class="status pending">${listAllDeletedComment.status}</span></td>
                                            <c:if test="${listAllDeletedComment.doctorID == 1}">
                                            <td><span>Calvin Carlo</span></td>
                                        </c:if>
                                        <c:if test="${listAllDeletedComment.doctorID == 2}">
                                            <td><span>Cristino Murphy</span></td>
                                        </c:if>
                                        <c:if test="${listAllDeletedComment.doctorID == 3}">
                                            <td><span>Alia Reddy</span></td>
                                        </c:if>
                                        <c:if test="${listAllDeletedComment.doctorID == 4}">
                                            <td><span>Toni Kovar</span></td>
                                        </c:if>
                                        <c:if test="${listAllDeletedComment.doctorID == 5}">
                                            <td><span>Jessica McFarlane</span></td>
                                        </c:if>
                                        <c:if test="${listAllDeletedComment.doctorID == 6}">
                                            <td><span>Elsie Sherman</span></td>
                                        </c:if>
                                        <c:if test="${listAllDeletedComment.doctorID == 7}">
                                            <td><span>Bertha Magers</span></td>
                                        </c:if>
                                        <c:if test="${listAllDeletedComment.doctorID == 8}">
                                            <td><span>Louis Batey</span></td>
                                        </c:if>
                                        <td><a href="#my-modal" style="border: none; font-size: 25px; color: #002060; cursor: pointer;"><i class='bx bx-export'></i></a></td>
                                        </tr>

                                        <!--Modal-->
                                        <div id="my-modal" class="modal">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <a href="#" class="close">&times;</a>
                                                    <h2>Restore</h2>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Bạn muốn đưa bình luận đã xóa này vào lại danh sách duyệt chứ ?</p>
                                                    <p>Hãy cân nhắc nhé !!!</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" name="action" value="RestoreFeedback" style="border: none; background: #CFE8FF; padding: 10px; border-radius: 5px; cursor: pointer; color: black; font-weight: 500;">Đồng ý</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </c:forEach>                                                                   
                                </tbody>
                            </table>
                        </c:if>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->

    </body>
</html>
