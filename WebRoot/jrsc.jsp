<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�����ղ�</title>
  </head>
  <body>
  <%
  if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('�Բ��������ȵ�½��');history.back();</script>");
	
}
else
{
String id=request.getParameter("id");
String biao=request.getParameter("biao");
String ziduan=request.getParameter("ziduan");
String sql="insert into shoucangjilu(username,xwid,ziduan,biao) values('"+request.getSession().getAttribute("username")+"','"+id+"','"+ziduan+"','"+biao+"')";
  	  	
 new CommDAO().commOper(sql); 
out.print("<script>alert('�ղسɹ�!!');location.href='"+request.getHeader("Referer")+"';</script>");
}
%>
  </body>
</html>


