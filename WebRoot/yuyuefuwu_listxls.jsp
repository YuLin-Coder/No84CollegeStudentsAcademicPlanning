<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yuyuefuwu.xls");
%>
<html>
  <head>
    <title>预约服务</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有预约服务列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>预约单号</td>    <td bgcolor='#cccccc'>服务名称</td>    <td bgcolor='#cccccc'>专业</td>    <td bgcolor='#cccccc'>类别</td>    <td bgcolor='#cccccc'>价格</td>    <td bgcolor='#cccccc'>预约时段</td>    <td bgcolor='#cccccc'>预约人</td>        <td bgcolor='#cccccc' width='80' align='center'>是否支付</td>    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "yuyuefuwu_list.jsp?1=1"; 
    String sql =  "select * from yuyuefuwu where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuyuedanhao") %></td>    <td><%=map.get("fuwumingcheng") %></td>    <td><%=map.get("zhuanye") %></td>    <td><%=map.get("leibie") %></td>    <td><%=map.get("jiage") %></td>    <td><%=map.get("yuyueshiduan") %></td>    <td><%=map.get("yuyueren") %></td>        <td align='center'><%=map.get("iszf")%></td>    
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

