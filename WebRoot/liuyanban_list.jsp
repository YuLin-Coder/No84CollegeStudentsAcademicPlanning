<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>���԰�</title>
     <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

<body >
  <p>�������԰��б�</p>


<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
  <tr>
    <td width="4%" height="30" bgcolor="cccccc">���</td>
    <td width="12%" height="30" bgcolor='#cccccc'>�ǳ�</td>
    <td width="4%" height="30" bgcolor='#cccccc'>ͷ��</td>
    <td width="10%" height="30" bgcolor='#cccccc'>QQ</td>
    <td width="11%" height="30" bgcolor='#cccccc'>����</td>
    <td width="16%" height="30" bgcolor='#cccccc'>�绰</td>
    <td width="12%" height="30" bgcolor="cccccc">����</td>
    <td width="12%" height="30" bgcolor="cccccc">���ʱ��</td>
    
    <td width="11%" height="30" bgcolor="cccccc">�ظ�����</td>
    <td width="150" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
   new CommDAO().delete(request,"liuyanban"); 
    String url = "liuyanban_list.jsp?1=1"; 
    String sql =  "select * from liuyanban where 1=1 ";
    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,10,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td height="45"><%=i %></td>
    <td height="45"><%=map.get("cheng") %></td><td height="45"><%= map.get("xingbie") %></td><td height="45"><%= map.get("QQ") %></td><td height="45"><%= map.get("youxiang") %></td><td height="45"><%= map.get("dianhua") %></td>
    <td height="45"><%= map.get("neirong") %></td>
    <td height="45"><%= map.get("addtime") %></td>
    <td height="45"><%= map.get("huifuneirong") %></td>
    <td width="150" height="45" align="center">  <a class="btn btn-info btn-small"  href="liuyanban_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small"  href="hf.jsp?id=<%=map.get("id")%>">�ظ�</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a class="btn btn-info btn-small"  style="cursor:pointer" onClick="javascript:window.print();">��ӡ��ҳ</a>
</body>
</html>

