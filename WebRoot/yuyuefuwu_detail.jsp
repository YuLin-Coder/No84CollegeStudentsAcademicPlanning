<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ԤԼ������ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yuyuefuwu");
     %>
  ԤԼ������ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>ԤԼ���ţ�</td><td width='39%'><%=m.get("yuyuedanhao")%></td><td width='11%'>�������ƣ�</td><td width='39%'><%=m.get("fuwumingcheng")%></td></tr><tr><td width='11%'>רҵ��</td><td width='39%'><%=m.get("zhuanye")%></td><td width='11%'>���</td><td width='39%'><%=m.get("leibie")%></td></tr><tr><td width='11%'>�۸�</td><td width='39%'><%=m.get("jiage")%></td><td width='11%'>ԤԼʱ�Σ�</td><td width='39%'><%=m.get("yuyueshiduan")%></td></tr><tr><td width='11%'>ԤԼ�ˣ�</td><td width='39%'><%=m.get("yuyueren")%></td><td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



