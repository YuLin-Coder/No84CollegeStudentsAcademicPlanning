<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ѧҵ�滮֪ʶ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xueyeguihuazhishi");
     %>
  ѧҵ�滮֪ʶ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>���⣺</td><td width='39%'><%=m.get("biaoti")%></td><td width='11%'>רҵ��</td><td width='39%'><%=m.get("zhuanye")%></td></tr><tr><td width='11%'>���</td><td width='39%'><%=m.get("leibie")%></td><td width='11%'>������</td><td width='39%'><a href="<%=m.get("fujian")%>">�������</a></td></tr><tr><td width='11%'>���ݣ�</td><td width='39%'><%=m.get("neirong")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



