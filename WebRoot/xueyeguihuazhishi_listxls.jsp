<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xueyeguihuazhishi.xls");
%>
<html>
  <head>
    <title>学业规划知识</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有学业规划知识列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>标题</td>    <td bgcolor='#cccccc'>专业</td>    <td bgcolor='#cccccc'>类别</td>    <td bgcolor='#cccccc' width='90' align='center'>附件</td>        
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "xueyeguihuazhishi_list.jsp?1=1"; 
    String sql =  "select * from xueyeguihuazhishi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("biaoti") %></td>    <td><%=map.get("zhuanye") %></td>    <td><%=map.get("leibie") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fujian") %>' target='_blank'>下载</a></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

