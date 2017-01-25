<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="i18n.msg"/>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><fmt:message key="page.title"/></title>

    <!-- Bootstrap -->

    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/menu.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/jquery-ui.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.css"/>" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pattaya" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/lib/jquery.1.10.2.min.js"/>"></script>
    <script src="<c:url value="/resources/js/lib/jquery.i18n.properties-min-1.0.9.js"/>"></script>
    <script src="<c:url value="/resources/js/lib/jquery-ui.min.js"/>"></script>
    <script src="<c:url value="/resources/js/lib/bootstrap.js"/>"></script>
    <script src="<c:url value="/resources/js/lib/parsley.min.js"/>"></script>

    <script src="<c:url value="/resources/js/app/service/MenuBarService.js"/>"></script>
    <script src="<c:url value="/resources/js/app/controller/MenuBarController.js"/>"></script>
    <script src="<c:url value="/resources/js/app/controller/DateController.js"/>"></script>
    <script src="<c:url value="/resources/js/app/pageupdate.js"/>"></script>
    <script src="<c:url value="/resources/js/parsley/validator.js"/>"></script>
    <script src="<c:url value="/resources/js/i18n/en.js"/>"></script>
    <script src="<c:url value="/resources/js/i18n/ru.js"/>"></script>
    <script>
        $(document).ready(function () {
            window.Parsley.setLocale($("#locale").val().substring(0, 2));
        });
    </script>
    <%--<script src="<c:url value="/resources/js/app/hostel.js"/>"></script>--%>
    <%--<script src="<c:url value="/resources/js/app/validator.js"/>"></script>--%>
    <%--<script src="<c:url value="/resources/js/app/ajaxrequests.js"/>"></script>--%>
    <%--<script src="<c:url value="/resources/js/app/pageupdate.js"/>"></script>--%>
    <%--<script src="<c:url value="/resources/js/app/notification.js"/>"></script>--%>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="body-style">
<c:import url="common/navbar.jsp"/>
<c:import url="common/regmodal.jsp"/>
<c:import url="common/depositmodal.jsp"/>
<c:import url="common/messagemodal.jsp"/>
<div class="main-content padd-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center text-warning">
                <img src="resources/img/error.png" alt="error" width="400">
                <h2>${pageContext.errorData.statusCode} Error</h2>
                <p>Sorry, an error has occurred, something went wrong!</p>
                <c:if test="${not empty pageContext.exception}">
                    <p>Exception: ${pageContext.exception}</p>
                    <p>Message: ${pageContext.exception.message}</p>
                </c:if>
                <c:if test="${not empty errorMessage}">
                    <p>Error message: ${errorMessage}</p>
                </c:if>
                <div class="error-actions">
                    <a href="${pageContext.request.contextPath}/service?command=go&page=main"
                       class="btn btn-primary btn-lg">
                        <span class="glyphicon glyphicon-arrow-left"></span>
                        Back Home
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="common/footer.jsp"/>
</body>
</html>