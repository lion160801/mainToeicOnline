<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/admin-guideline-listen-list.html" var="listenGuidelineListUrl">
    <c:param name="urlType" value="url_list"/>
    <%--&lt;%&ndash;</c:url>&ndash;%&gt;--%>
    <%--<c:url value="/admin-user-list.html" var="userListUrl">--%>
    <%--    <c:param name="urlType" value="url_list"/>--%>
</c:url>

<c:url value="/admin-closest-method.html" var="closestMethodUrl">
    <c:param name="urlType" value="url_closest_method"/>
</c:url>
<c:url value="/admin-find-method.html" var="findMethodUrl">
    <c:param name="urlType" value="url_find_method"/>
</c:url>
<c:url value="/admin-each-function.html" var="eachFunctionUrl">
    <c:param name="urlType" value="url_each_function"/>
</c:url>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
        try {
            ace.settings.loadState('sidebar')
        } catch (e) {
        }
    </script>
    <div class="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="ace-icon fa fa-signal"></i>
            </button>

            <button class="btn btn-info">
                <i class="ace-icon fa fa-pencil"></i>
            </button>

            <button class="btn btn-warning">
                <i class="ace-icon fa fa-users"></i>
            </button>

            <button class="btn btn-danger">
                <i class="ace-icon fa fa-cogs"></i>
            </button>
        </div>
        <div class="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div>
    <ul class="nav nav-list">
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                <fmt:message key="label.guideline.listen" bundle="${lang}"/>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="${listenGuidelineListUrl}">
                        <i class="menu-icon fa fa-caret-right"></i>
                        <fmt:message key="label.guideline.listen.list" bundle="${lang}"/>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
<%--        <li class="">--%>
<%--            <a href="#" class="dropdown-toggle">--%>
<%--                <i class="menu-icon fa fa-list"></i>--%>
<%--                <span class="menu-text"></span>--%>
<%--                &lt;%&ndash;                <fmt:message key="label.dashboard" bundle="${lang}"/>&ndash;%&gt;--%>
<%--                <b class="arrow fa fa-angle-down"></b>--%>
<%--            </a>--%>
<%--            <b class="arrow"></b>--%>
<%--            <ul class="submenu">--%>
<%--                <li class="">--%>
<%--                    <a href="${userListUrl}">--%>
<%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
<%--                        &lt;%&ndash;                        <fmt:message key="label.user.management" bundle="${lang}"/>&ndash;%&gt;--%>
<%--                    </a>--%>
<%--                    <b class="arrow"></b>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </li>--%>
<%--        <li class="">--%>
<%--            <a href="#" class="dropdown-toggle">--%>
<%--                <i class="menu-icon fa fa-list"></i>--%>
<%--                <span class="menu-text"></span>--%>
<%--                &lt;%&ndash;                <fmt:message key="lable.exercise.management" bundle="${lang}"/>&ndash;%&gt;--%>
<%--                <b class="arrow fa fa-angle-down"></b>--%>
<%--            </a>--%>
<%--            <b class="arrow"></b>--%>
<%--            <ul class="submenu">--%>
<%--                <li class="">--%>
<%--                    <a href="<c:url value=""/>">--%>
<%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
<%--                        &lt;%&ndash;                        <fmt:message key="label.exercise.audio.image.upload" bundle="${lang}"/>&ndash;%&gt;--%>
<%--                    </a>--%>
<%--                    <b class="arrow"></b>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </li>--%>
    </ul>
    <ul class="nav nav-list">
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                <fmt:message key="label.jquery.totorial" bundle="${lang}"/>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="${closestMethodUrl}">
                        <i class="menu-icon fa fa-caret-right"></i>
                        <fmt:message key="label.jquery.closest.method" bundle="${lang}"/>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
            <ul class="submenu">
                <li class="">
                    <a href="${findMethodUrl}">
                        <i class="menu-icon fa fa-caret-right"></i>
                        <fmt:message key="label.jquery.find.method" bundle="${lang}"/>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
            <ul class="submenu">
                <li class="">
                    <a href="${eachFunctionUrl}">
                        <i class="menu-icon fa fa-caret-right"></i>
                        <fmt:message key="label.jquery.each.function" bundle="${lang}"/>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul>
    <div class="sidebar-toggle sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left"
           data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>