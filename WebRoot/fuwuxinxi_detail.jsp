<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>服务信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"fuwuxinxi");
     %>
  服务信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>服务名称：</td><td width='39%'><%=m.get("fuwumingcheng")%></td><td width='11%'>专业：</td><td width='39%'><%=m.get("zhuanye")%></td></tr><tr><td width='11%'>类别：</td><td width='39%'><%=m.get("leibie")%></td><td width='11%'>价格：</td><td width='39%'><%=m.get("jiage")%></td></tr><tr><td width='11%'>服务简介：</td><td width='39%'><%=m.get("fuwujianjie")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



