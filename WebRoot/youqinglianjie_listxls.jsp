<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=youqinglianjie.xls");
%>
<html>
  <head>
    <title>��������</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>�������������б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#CCFFFF'>��վ����</td>    <td bgcolor='#CCFFFF'>��ַ</td>    <td bgcolor='#CCFFFF' width='90' align='center'>logo</td>    
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

    String url = "youqinglianjie_list.jsp?1=1"; 
    String sql =  "select * from youqinglianjie where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("wangzhanmingcheng") %></td>    <td><%=map.get("wangzhi") %></td>    <td width='90' align='center'><a href='<%=map.get("logo") %>' target='_blank'><img src='<%=map.get("logo") %>' width=88 height=99 border=0 /></a></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

