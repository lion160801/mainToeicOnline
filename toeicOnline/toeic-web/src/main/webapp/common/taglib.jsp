<%@ page import="vn.myclass.core.web.common.WebConstant" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<fmt:setBundle basename="ResourcesBundle" var="lang"/>
<c:set var="sessionUser" value="<%= WebConstant.LOGIN_NAME%>"/>
