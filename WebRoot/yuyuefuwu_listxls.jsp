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
    <title>ԤԼ����</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>����ԤԼ�����б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>ԤԼ����</td>    <td bgcolor='#cccccc'>��������</td>    <td bgcolor='#cccccc'>רҵ</td>    <td bgcolor='#cccccc'>���</td>    <td bgcolor='#cccccc'>�۸�</td>    <td bgcolor='#cccccc'>ԤԼʱ��</td>    <td bgcolor='#cccccc'>ԤԼ��</td>        <td bgcolor='#cccccc' width='80' align='center'>�Ƿ�֧��</td>    
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

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
�������ݹ�<%=i %>��
  </body>
</html>

