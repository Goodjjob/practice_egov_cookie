<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

  

<script type="text/javascript">



$(document).ready(function() {		
   
   dbClick.startModul();
	
   lineCheck.init();
   lineCheck.initFn();
   
   var arr = new Array();
   
   arr = trCookie.getCookieArray();
   
   for (var i = 0; i < arr.length; i++) {
      
      $("tbody tr:eq("+arr[i]+")").addClass("trLine");
   }
});

var dbClick = {
		   
		   befourVar   : "",
		   nextVar      : "",
		   $changeTarget   : "",
		   
		   startModul : function() {
		      
		      var that = this;
		      
		      $("tbody tr").dblclick(function() {
		         
		         var $this = $(this);
		         
		         if(!$this.hasClass("trLine")) {
		               
		               $this.addClass("trLine");
		               
		               if(that.befourVar == "") {
		                  
		                  that.befourVar = $this.find("td:eq(1)").text();
		                  
		                  that.$changeTarget = $this;
		               } else {
		                  
		                  that.nextVar = $this.find("td:eq(1)").text();
		                  
		                    $this.find("td:eq(1)").text(that.befourVar);
		                    
		                    that.$changeTarget.find("td:eq(1)").text(that.nextVar);
		                    
		                    that.befourVar = "";
		               }
		            } else {
		               
		               $this.removeClass("trLine");
		               
		               that.befourVar = "";
		            }
		      });
		   }
		}

var lineCheck = {
      
   btnsTarget : null,
   
   init : function() {
      
      this.btnsTarget = $("[type=button]");
   },
   
   initFn : function() {
      
      var that = this;
      
      this.btnsTarget.click(function() {
         
         if ($("#textVal").val().length == 0) {
            
            alert("텍스트를 입력하세요!");
            
            return false;
         } else {
            
            that.lineFn($("#textVal").val());
         }
      });      
   },
   
   lineFn : function(textVal) {
      
      var arry = new Array();
      
      $("tbody tr").each(function(index) {
         
         if (textVal == $(this).find("td:eq(1)").text()) {
            
            if (!$(this).hasClass("trLine")) {
               
               $(this).addClass("trLine");
            } else {
               
               $(this).removeClass("trLine");
            }
         } 
         
         if ($(this).hasClass("trLine")) {
            
            arry.push($(this).index());
         }         
         
      });
      
      trCookie.setCookieArray(arry);
      
      if ($('.trLine').length == $("tbody tr").length) {
         
         alert("다 채웠다");
      } else if ($('.trLine').length == 0){
         
         alert("다 지웠다");
      }
   }
}

var trCookie = {
   
   setCookieArray : function(carray) {
      
      var str = "";
      
      for (var key in carray) {
         
         if (str != "") {
            
            str += ",";
         }
         
         str += key + ":" + carray[key];
      }
      
      this.setCookie(str);
   },
   
   setCookie : function(cvalue) {
      
      /* var d = new Date();
      
      d.setTime(d.getTime() + (1*24*60*60*1000));
      
      var expires = "expires=" + d.toUTCString();
      
      document.cookie = "trCookie=" + cvalue + "; " + expires; */
      
      $.cookie("trCookie", cvalue, { expires : 1 });
   },
   
   getCookieArray : function() {
      
      var str = this.getCookie();
      
      var tmp1 = str.split(",");
      
      var reData = [];
      
      for ( var i in tmp1) {
         
         var tmp2 = tmp1[i].split(":");
         
         reData[tmp2[0]] = tmp2[1];
      }
      
      return reData;
   },
   
   getCookie : function() {
      
      /* var name = "trCookie=";
      
      var c = document.cookie;
      
      return c.substring(name.length, c.length); */
      
      return $.cookie("trCookie");
   }
}
</script>
<style type="text/css">
.trLine {
   border: 4px solid #f00;
}
</style>
<div class="col-md-3">
   <div class="form-group">
      <input type="text" id="textVal" class="form-control" placeholder="" value="">
   </div>
</div>
<div class="col-md-2">
   <div class="form-group">
      <input type="button" class="btn btn-info btn-fill pull-right" value="쿠키를 마스터 해봅시다">
   </div>
</div>
<div class="container-fluid">
   <div class="row">
          <div class="col-md-12">
              <div class="card">
                  <div class="header">
                      <h4 class="title">쿠키도 뭐 그렇게 어렵진 않아요.</h4>
                      <p class="category">쿠키 확실하게 다져서 갑시다~</p>
                  </div>
                  <div class="content table-responsive table-full-width">
                      <table class="table table-hover table-striped">
                          <thead>
                              <th>ID</th>
                             <th>Name</th>
                             <th>Salary</th>
                             <th>Country</th>
                             <th>City</th>
                          </thead>
                          <tbody>
                           <c:forEach items="${welcomeWebList}" var="welcomeWebList" varStatus="status">
                              <tr>
                                  <td><c:out value="${welcomeWebList.id}"/></td>
                                  <td><c:out value="${welcomeWebList.userName}"/></td>
                                  <td><c:out value="${welcomeWebList.age}"/></td>
                                  <td><c:out value="${welcomeWebList.country}"/></td>
                                  <td><c:out value="${welcomeWebList.etc}"/></td>
                               </tr>
                           </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>