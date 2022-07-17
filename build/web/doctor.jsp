<%-- 
    Document   : doctor
    Created on : Jun 23, 2022, 8:22:43 PM
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
        <div class="side-menu">
            <div class="brand-name">
                <h1>Hi ! ${DOCTOR.fullName}</h1>
            </div>
            <ul>
                <form action="MainController" method="POST">
                    <input type="hidden" value="${DOCTOR.id}" name="doctorID"/>
                    <li><i class="fa fa-calendar me-4" aria-hidden="true"></i><button type="submit" name="action" value="View_Appoinment" class="btn btn-link" style="color: orange; font-size: 20px; text-decoration: none;">Appoinments</button></li>
                    <li><i class="fa fa-commenting me-4" aria-hidden="true"></i><button type="button" class="btn btn-link" style="color: orange; font-size: 20px; text-decoration: none;">Reviews</button></li>
                    <li><i class="fa fa-bed me-4" aria-hidden="true"></i><button type="button" class="btn btn-link" style="color: orange; font-size: 20px; text-decoration: none;">Patients</button></li>
                    <li><i class="fa fa-question-circle me-4" aria-hidden="true"></i><span>Help</span></li>
                    <li><i class="fa fa-cogs me-4" aria-hidden="true"></i><span>Settings</span> </li>
                </form>
            </ul>
        </div>
        <jsp:include page="/${action}.jsp" />
    </body>
</html>

