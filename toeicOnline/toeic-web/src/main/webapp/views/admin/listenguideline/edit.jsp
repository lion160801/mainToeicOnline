<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="formUrl" value="/admin-guideline-listen-edit.html"/>
<html>
<head>
    <title><fmt:message key="label.guideline.listen.edit" bundle="${lang}"/></title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#"><fmt:message key="label.home" bundle="${lang}"/></a>
                </li>
                <li class="active"><fmt:message key="label.guideline.listen.edit" bundle="${lang}"/></li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <c:if test="${not empty messageResponse}">
                        <div class="alert alert-block alert-${alert}">
                            <button type="button" class="close" data-dismiss="alert">
                                <i class="ace-icon fa fa-times"></i>
                            </button>
                                ${messageResponse}
                        </div>
                    </c:if>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label class="col-sm-3 control-label no-padding-right"></label>--%>
                    <%--                        <div class="col-sm-9">--%>
                    <%--                            <button>Click me</button>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label class="col-sm-3 control-label no-padding-right"></label>--%>
                    <%--                        <div class="col-sm-9">--%>
                    <%--                            <p>This is 1stP</p>--%>
                    <%--                            <p>This is 2stP</p>--%>
                    <%--                            <h2>This is h2</h2>--%>
                    <%--                        </div>--%>
                    <%--                    </div> --%>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label class="col-sm-3 control-label no-padding-right"></label>--%>
                    <%--                        <div class="col-sm-9">--%>
                    <%--                            <input type="text" value="JSP-SERVLET" id="value"/>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    </br>--%>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label class="col-sm-3 control-label no-padding-right"></label>--%>
                    <%--                        <div class="col-sm-9">--%>
                    <%--                            <p id="showValue">Nothing</p>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    </br>--%>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label class="col-sm-3 control-label no-padding-right"></label>--%>
                    <%--                        <div class="col-sm-9">--%>
                    <%--                            <button onclick="usingValAction()">Show Inf</button>--%>
                    <%--                        </div>--%>
                    <%--                    </div>  --%>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label class="col-sm-3 control-label no-padding-right"></label>--%>
                    <%--                        <div class="col-sm-9">--%>
                    <%--                            <input type="checkbox" id="testCheckbox"/>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%-- Jquery-CSS Method--%>
<%--                    <div class="form-group">--%>
<%--                        <label class="col-sm-3 control-label no-padding-right"></label>--%>
<%--                        <div class="col-sm-9">--%>
<%--                            <p id="demoCssMethod1"> This is P</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    </br>--%>
<%--                    <div class="form-group">--%>
<%--                        <label class="col-sm-3 control-label no-padding-right"></label>--%>
<%--                        <div class="col-sm-9">--%>
<%--                            <button id="demoCssMethod">Change text color</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                jQuery Closest() Method--%>
<%--                    <div style="width:500px;">div (great-grandparent)--%>
<%--                        <ul>ul (second ancestor - second grandparent)--%>
<%--                            <ul>ul (first ancestor - first grandparent)--%>
<%--                                <li>li (direct parent)--%>
<%--                                    <span>span</span>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </ul>--%>
<%--                    </div>--%>

<%--                    Jquery Change() Mehthod--%>
<%--                    <input type="checkbox" id="sex" onchange="changeValueCheckbox()"/>--%>
                    <input type="checkbox" id="sex"/>
                    <p id="textSex"></p>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        changeValueCheckbox();
    });

    function usingValAction() {
        var value = $("#value").val();
        $("#showValue").html(value);
    }

    function demoCssMethod() {
        $("#demoCssMethod").click(function () {
            $("#demoCssMethod1").css("color", "blue");
        });
    }
    function changeValueCheckbox() {
        // if($('#sex').prop('checked')==true){
        //     $('#textSex').html('<h1>Male</h1>');
        // }
        // else {
        //     $('#textSex').html('<h1>Female</h1>');
        // }
        $('#sex').on('change',function (){
            if($('#sex').prop('checked')==true){
                $('#textSex').html('<h1>Male</h1>');
            }
            else {
                $('#textSex').html('<h1>Female</h1>');
            }
        });
    }
</script>
</div>
</body>
</html>
