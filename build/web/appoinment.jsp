<%-- 
    Document   : appoinment
    Created on : Jun 27, 2022, 10:05:54 PM
    Author     : SE150436 - Hoàng Quang Hòa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
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
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <!-- Css -->
        <link href="<c:url value="/css/doctor.css"/>" rel="stylesheet" type="text/css" />
        <!--<link href="<c:url value="/css/employee.css"/>" rel="stylesheet" type="text/css" />-->
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
        <div class="wrapper" >
            <h2 style="margin-top: 50px; color: steelblue;">Xin chào bác sỹ ${DOCTOR.fullName} nhé !</h2>
            <h5>Hãy luôn vui vẻ với bệnh nhân nhé Bác sỹ !</h5>     
            <c:if test="${LIST_APPOINMENT != null}">
                <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th>No</th>
                            <th>Full Name</th>
                            <th>Appoinment Date</th>
                            <th>Email</th>
                            <th>Status</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="listAppoinment" items="${LIST_APPOINMENT}" varStatus="loop">
                            <tr>
                                <td style="font-weight: bold; color: red;">${loop.count}</td>
                                <td >${listAppoinment.fullName}</td>
                                <td>${listAppoinment.appointment_date}</td>
                                <td>${listAppoinment.email}</td>
                                <td><span style="background: red; color: white;">${listAppoinment.status}</span></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>

        </div>
    </body>
</html>
