<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <span class="white">欢迎来到大学生学业规划咨询服务平台!</span>
      </div>
      <div class="social-links float-right line-30">
	 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
        <a href="userlog.jsp" class="twitter">登录</a><font color="#FFFFFF">|</font><a href="userreg.jsp" class="twitter">注册</a>
		 <%}else{ %>
	    <font color="#FFFFFF"><%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]&nbsp;</font> <a href="logout.jsp" onclick="return confirm('确定要退出？')" >退出</a><a href="main.jsp" >后台</a>
	    <%} %>
		
        <button class="search-btn float-right">搜索</button>
        <input type="text" placeholder="请输入关键字..." class="search float-right">
      </div>
    </div>
  </section>

  <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
        <h1><a href="index.jsp" class="scrollto">
            <img src="./qtimages/images/logo.png" alt="" width="60">大学生学业规划咨询服务平台
          </a></h1>
      </div>
      <nav id="nav-menu-container">
        <ul class='nav-menu'>
          <li class='menu-active'><a href='index.jsp'>首页</a></li>
		
		  <li class='menu-has-children'><a href=''>学生信息</a>
            <ul><li><a href='xueshengxinxiadd.jsp'>学生注册</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>服务信息</a>
            <ul><li><a href='fuwuxinxilist.jsp'>服务信息</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>学业规划知识</a>
            <ul><li><a href='xueyeguihuazhishilist.jsp'>学业规划知识</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>在线留言</a>
            <ul><li><a href='lyb.jsp'>在线留言</a></li> <li><a href='lyblist.jsp'>查看留言</a></li> </ul>
          </li><!--yoxulixuyaxn-->
          <li><a href='login.jsp'>后台管理</a></li>
        </ul>
      </nav>
    </div>
  </header>
