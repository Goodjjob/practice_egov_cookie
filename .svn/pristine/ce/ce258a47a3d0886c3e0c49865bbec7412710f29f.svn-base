<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

var left = 
{
	pageSubmitFn : function(pageName) {
		
		$("#pageName").val(pageName);

		if(pageName == "mainMenu") {
			
			$("#frm").attr("action", "main.do");
		} else if(pageName == "welcomeWebMenu") {
			
			$("#frm").attr("action", "welcomeWeb.do");	
		}
		
		$("#frm").submit();
	}
}

$(document).ready(function(){	

	var pageName = "<c:out value="${param.pageName}"/>";
	
	$("[prop=menu]").removeClass("active");
	
	$("#"+pageName).addClass("active");
});
</script>

<form id="frm" name="frm">
	<input type="hidden" id="pageName"  	name="pageName" />
</form>

<div class="sidebar" data-color="orange" data-image="images/bootstrap/full-screen-image-3.jpg">
    <div class="logo">
        <a href="http://www.creative-tim.com" class="logo-text">
            HANQ TEAM
        </a>
    </div>
	<div class="logo logo-mini">
		<a href="http://www.creative-tim.com" class="logo-text">
			Ct
		</a>
	</div>
   	<div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="images/bootstrap/default-avatar.PNG" />
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    HANQ
                    <b class="caret"></b>
                </a>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li><a href="#">My Profile</a></li>
                        <li><a href="#">Edit Profile</a></li>
                        <li><a href="#">Settings</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">
            <li prop="menu" class="active" id="mainMenu">
                <a href="#" onclick="javascript:left.pageSubmitFn('mainMenu')">
                    <i class="pe-7s-graph"></i>
                    <p>HOME</p>
                </a>
            </li>
            <li>
                <a data-toggle="collapse" href="#componentsExamples"  aria-expanded="true">
                    <i class="pe-7s-plugin"></i>
                    <p>쿠키 마스터
                       <b class="caret"></b>
                    </p>
                </a>
                <div class="collapse in" id="componentsExamples">
                    <ul class="nav">
                        <li prop="menu" class="active" id="welcomeWebMenu">
                        	<a href="#" onclick="javascript:left.pageSubmitFn('welcomeWebMenu')">시작해봅시다.</a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
   	</div>
</div>