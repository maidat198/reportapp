
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib tagdir="/WEB-INF/tags/util" prefix="util"%>
<%@page contentType="text/html; charset=UTF-8" %>
 
 <c:if test="${pageContext['request'].userPrincipal == null}">
 
 
 
 
    <div class="login-box">
      <div class="login-logo">
        <a href="#"><b>Admin</b>REPORTAPP</a>
      </div><!-- /.login-logo -->
      <%-- <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>
        <form name="f" action="${fn:escapeXml(form_url)}" method="POST">
          <div class="form-group has-feedback">
            <input id="j_username" type='text' name='j_username' class="form-control" placeholder="Username">
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input id="j_password" type='password' name='j_password' class="form-control" placeholder="Password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
         
          <div class="row">
          <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
            </div>
            </div>
            
           
            
            
        </form>
      </div><!-- /.login-box-body --> --%>
    </div><!-- /.login-box -->
    
    
  </c:if>
 
  
  
  
  