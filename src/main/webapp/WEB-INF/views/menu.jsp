<%@page import="java.text.SimpleDateFormat"%>
<%@taglib tagdir="/WEB-INF/tags/menu" prefix="menu"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags/menu" prefix="menu" %>
<%@page contentType="text/html; charset=UTF8" %>

<%@page import="org.joda.time.format.DateTimeFormat" %>
<%@page import="org.springframework.context.i18n.LocaleContextHolder" %>
<%@page import="java.util.Date" %>

<%

 SimpleDateFormat sdf = new SimpleDateFormat(DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));

%>

<c:set var="now" value="<%= sdf.format(new Date())%>" />
<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
         
          <!-- search form -->
       <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          
          
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
              <spring:url value="/baocaotheogoicuoc/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i><span>Báo cáo theo gói cước</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaotheodtkh/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo theo đối tượng KH</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaogiahan/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo gia hạn</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaohuydichvu/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo hủy dịch vụ</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaonapthe/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo nạp thẻ</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaotheodvdata/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo theo dịch vụ data</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaotheodvthoai/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo theo dịch vụ thoại</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaotheodvsms/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo theo dịch vụ SMS</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaokhmualoi/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo KH mua không thành công</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaodoanhthu/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo doanh thu</span>
              </a>
             </li>
             <li class="treeview">
              <spring:url value="/baocaolichsukh/index" var="thongke"></spring:url>
              <a href="${thongke }">
                <i class="fa fa-th"></i> <span>Báo cáo lịch sử khách hàng</span>
              </a>
             </li>
          </ul>
          
        </section>
        <!-- /.sidebar -->
      </aside>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <!--  <script src="js/bootstrap.min.js"></script> -->
	<script>
		$('.tree-toggle').click(function () {
			$(this).parent().children('ul.tree').toggle(200);
		});
	</script>
