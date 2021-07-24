<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url value="/ajax-admin-user-edit.html" var="editUserUrl">
    <c:param name="urlType" value="url_edit"/>
</c:url>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <c:if test="${not empty item.pojo.userId}">
                <h4 class="modal-title"><f:message bundle="${lang}" key="label.user.edit"/> </h4>
            </c:if>
            <c:if test="${empty item.pojo.userId}">
                <h4 class="modal-title"><f:message bundle="${lang}" key="label.user.add"/> </h4>
            </c:if>
        </div>
<%--        <form action="${editUserUrl}" method="POST" id="editUserForm">--%>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="md-form">
                        <input type="text" placeholder="<fmt:message key='label.user.name' bundle='${lang}'/>" class="form-control"
                               value="${item.pojo.name}" id="username" />
                    </div>
                </div>
                <br/>
                <br/>
                <div class="col-md-12">
                    <div class="md-form">
                        <input type="text" placeholder="<fmt:message key='label.user.fullname' bundle='${lang}'/>" class="form-control"
                               value="${item.pojo.fullname}" />
                    </div>
                </div>
                <br/>
                <br/>
                <div class="col-md-12">
                    <div class="md-form">
                        <input type="password" placeholder="<fmt:message key='label.user.password' bundle='${lang}'/>" class="form-control"
                               value="${item.pojo.password}" id="password"  />
                    </div>
                </div>
                <br/>
                <br/>
                <div class="col-md-12">
                    <div class="md-form">
                        <select id="role">
                            <option><fmt:message key="label.option.role" bundle="${lang}"/></option>
                            <c:forEach items="${item.roles}" var="itemRole">
                                <option value="${itemRole.roleId}">${itemRole.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
        </div>
<%--        </form>--%>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message key="label.close" bundle="${lang}"/></button>
            <button type="button" id="btnSave" class="btn btn-primary"><fmt:message key="label.save" bundle="${lang}"/></button>
        </div>
    </div>
</div>
</body>
</html>
