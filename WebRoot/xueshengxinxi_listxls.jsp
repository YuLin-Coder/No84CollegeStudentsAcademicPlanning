<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xueshengxinxi.xls");
%>
<html>
  <head>
    <title>学生信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有学生信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>学号</td>    <td bgcolor='#cccccc'>密码</td>    <td bgcolor='#cccccc'>学生姓名</td>    <td bgcolor='#cccccc' width='40' align='center'>性别</td>    <td bgcolor='#cccccc'>院系</td>    <td bgcolor='#cccccc'>专业</td>    <td bgcolor='#cccccc'>班级</td>    <td bgcolor='#cccccc'>手机</td>    <td bgcolor='#cccccc'>邮箱</td>    <td bgcolor='#cccccc'>身份证</td>    <td bgcolor='#cccccc' width='90' align='center'>照片</td>        <td bgcolor='#cccccc' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "xueshengxinxi_list.jsp?1=1"; 
    String sql =  "select * from xueshengxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("xueshengxingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("yuanxi") %></td>    <td><%=map.get("zhuanye") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("youxiang") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>        <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=xueshengxinxi" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
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

