<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <span class="white">��ӭ������ѧ��ѧҵ�滮��ѯ����ƽ̨!</span>
      </div>
      <div class="social-links float-right line-30">
	 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
        <a href="userlog.jsp" class="twitter">��¼</a><font color="#FFFFFF">|</font><a href="userreg.jsp" class="twitter">ע��</a>
		 <%}else{ %>
	    <font color="#FFFFFF"><%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]&nbsp;</font> <a href="logout.jsp" onclick="return confirm('ȷ��Ҫ�˳���')" >�˳�</a><a href="main.jsp" >��̨</a>
	    <%} %>
		
        <button class="search-btn float-right">����</button>
        <input type="text" placeholder="������ؼ���..." class="search float-right">
      </div>
    </div>
  </section>

  <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
        <h1><a href="index.jsp" class="scrollto">
            <img src="./qtimages/images/logo.png" alt="" width="60">��ѧ��ѧҵ�滮��ѯ����ƽ̨
          </a></h1>
      </div>
      <nav id="nav-menu-container">
        <ul class='nav-menu'>
          <li class='menu-active'><a href='index.jsp'>��ҳ</a></li>
		
		  <li class='menu-has-children'><a href=''>ѧ����Ϣ</a>
            <ul><li><a href='xueshengxinxiadd.jsp'>ѧ��ע��</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>������Ϣ</a>
            <ul><li><a href='fuwuxinxilist.jsp'>������Ϣ</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>ѧҵ�滮֪ʶ</a>
            <ul><li><a href='xueyeguihuazhishilist.jsp'>ѧҵ�滮֪ʶ</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>��������</a>
            <ul><li><a href='lyb.jsp'>��������</a></li> <li><a href='lyblist.jsp'>�鿴����</a></li> </ul>
          </li><!--yoxulixuyaxn-->
          <li><a href='login.jsp'>��̨����</a></li>
        </ul>
      </nav>
    </div>
  </header>
