<%-- 
    Document   : doctorInfo
    Created on : Jun 4, 2022, 8:27:09 PM
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
        <!-- Icons -->
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"
            />
        <!-- Css -->
        <link href="<c:url value="/css/doctorInfo.css"/>" rel="stylesheet" type="text/css" />
        <!-- Font  -->
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
            />
        <!-- BootStrap  -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            />
        <!-- Js  -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <div class="container bootstrap snippets bootdey">
            <div class="row">
                <div class="profile-nav col-md-3">
                    <div class="panel">
                        <div class="user-heading round">
                            <a href="#">
                                <img src="<c:url value="/images/doctors/${DOCTOR.img}"/>" alt="">
                            </a>
                            <h1>${DOCTOR.fullName}</h1>
                            <p>${DOCTOR.email}</p>
                        </div>
                    </div>
                </div>
                <div class="profile-info col-md-9">
                    <div class="panel">
                        <div class="bio-graph-heading">
                            Quan tâm bệnh nhân của mình như người trong gia đình mình
                        </div>
                        <div class="panel-body bio-graph-info mt-4">
                            <h1>Thông tin bác sỹ</h1>
                            <div class="row">
                                <div class="bio-row">
                                    <p><span>Họ và tên </span>: ${DOCTOR.fullName}</p>
                                </div>
                                <div class="bio-row">
                                    <p><span>Tuổi </span>: ${DOCTOR.age}</p>
                                </div>
                                <div class="bio-row">
                                    <p><span>Địa chỉ </span>: ${DOCTOR.address}</p>
                                </div>
                                <div class="bio-row">
                                    <p><span>Email</span>: ${DOCTOR.email}</p>
                                </div>
                                <div class="bio-row">
                                    <c:if test="${DOCTOR.gender == 0}">
                                        <p><span>giới tính </span>: Nam</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.gender == 1}">
                                        <p><span>Giới tính </span>: Nữ</p>
                                    </c:if>
                                </div>
                                <div class="bio-row">
                                    <p><span>SĐT </span>: ${DOCTOR.phoneNumber}</p>
                                </div>
                                <div class="bio-row">
                                    <p><span>Trình độ </span>: ${DOCTOR.level}</p>
                                </div>
                                <div class="bio-row">
                                    <p><span>Số năm kinh nghiệm </span>: 12</p>
                                </div>
                                <div class="bio-row">
                                    <p><span>Bằng cấp </span>: ${DOCTOR.education}</p>
                                </div>
                                <div class="bio-row">
                                    <c:if test="${DOCTOR.specialize == 1}">
                                        <p><span>Chuyên môn </span>: Cấy ghép Implant</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.specialize == 2}">
                                        <p><span>Chuyên môn </span>: Thẩm mỹ răng sứ</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.specialize == 3}">
                                        <p><span>Chuyên môn </span>: Trồng răng sứ</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.specialize == 4}">
                                        <p><span>Chuyên môn </span>: Làm mặt sứ veneer</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.specialize == 5}">
                                        <p><span>Chuyên môn </span>: Niềng răng chỉnh nha</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.specialize == 6}">
                                        <p><span>Chuyên môn </span>: Thẩm mỹ nha khoa</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.specialize == 7}">
                                        <p><span>Chuyên môn </span>: Tẩy trắng răng</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.specialize == 8}">
                                        <p><span>Chuyên môn </span>: Nha tổng quát</p>
                                    </c:if>

                                </div>
                                <div class="bio-row">
                                    <c:if test="${DOCTOR.wkID == 1}">
                                        <p><span>Giờ làm </span>: 09:00AM - 11:00AM</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.wkID == 2}">
                                        <p><span>Giờ làm </span>: 12:00AM - 02:00PM</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.wkID == 3}">
                                        <p><span>Giờ làm </span>: 02:00PM - 04:00PM</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.wkID == 4}">
                                        <p><span>Giờ làm </span>: 04:00PM - 06:00PM</p>
                                    </c:if>
                                    <c:if test="${DOCTOR.wkID == 5}">
                                        <p><span>Giờ làm </span>: 07:00PM - 09:00PM</p>
                                    </c:if>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Comments-->
        <div class="card">
            <div class="container">
                <div class="row">

                    <div class="col-2">
                        <c:if test="${LOGIN_USER != null}">
                            <img src="<c:url value="/images/users/${LOGIN_USER.img}"/>" width="70" class="rounded-circle mt-2">
                        </c:if> 
                    </div>

                    <div class="col-10">
                        <div class="comment-box ml-2">
                            <h4>Viết bình luận và đánh giá</h4>
                            <form action="MainController" method="POST"> 
                                <input type="hidden" value="${LOGIN_USER.userID}" name="id"/> 
                                <input type="hidden" value="${DOCTOR.id}" name="docID"/> 
                                <input type="hidden" value="${LOGIN_USER.fullName}" name="name"/> 
                                <div class="rating"> 
                                    <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label>
                                    <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> 
                                    <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label>
                                    <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label>
                                    <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label>
                                </div>
                                <div class="comment-area">
                                    <textarea class="form-control" placeholder="what is your view?" name="txtCommentCmt" rows="4"></textarea>
                                </div>
                                <div class="comment-btns mt-2">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="">

                                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="padding: 7px 30px;">
                                                    Gửi
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- The Modal -->
                                <div class="modal fade" id="myModal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Bạn đồng ý chứ?</h4>
                                                <button type="button" class="close" data-dismiss="modal">×</button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                Ý kiến của bạn đã được gửi, nó sẽ được xuất hiện sớm thôi
                                            </div>

                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <!--<button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>-->
                                                <button class="btn btn-primary send btn-sm" style="padding: 7px 30px;" name="action" value="Send">Oke</button> 
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>   
        </div>

        <!--Reply-->
        <div class="container mt-5">

            <div class="row  d-flex justify-content-center">

                <div class="col-md-8">

                    <div class="headings d-flex justify-content-between align-items-center mb-3">
                        <h5>Comments</h5>

                        <div class="buttons">

                            <span class="badge bg-white d-flex flex-row align-items-center">
                                <span class="text-primary">Comments "ON"</span>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>

                                </div>
                            </span>

                        </div>

                    </div>



                    <div class="card p-3">
                        <c:forEach var="feedback" items="${FEEDBACK}">
                            <div class="d-flex justify-content-between align-items-center">

                                <div class="user d-flex flex-row align-items-center">
                                    <img src="https://i.imgur.com/hczKIze.jpg" width="30" class="user-img rounded-circle mr-2">
                                    <span><small class="font-weight-bold text-primary">${feedback.name}</small> <small class="font-weight-bold">${feedback.contentCmt}</small></span>

                                </div>


                            </div>


                            <div class="action d-flex justify-content-between mt-2 align-items-center">

                                <div class="reply px-4">
                                    <small></small>
                                    <span class="dots"></span>
                                    <small></small>
                                    <span class="dots"></span>
                                    <small></small>

                                </div>

                                <div class="icons align-items-center">

                                    <c:if test="${feedback.rate == 1}">                            
                                        <i class="fa fa-star text-warning"></i>
                                    </c:if>
                                    <c:if test="${feedback.rate == 2}">                            
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                    </c:if>
                                    <c:if test="${feedback.rate == 3}">                            
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                    </c:if>
                                    <c:if test="${feedback.rate == 4}">                            
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                    </c:if>
                                    <c:if test="${feedback.rate == 5}">                            
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                    </c:if>

                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
