<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��������</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�������������б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��վ���ƣ�<input name="wangzhanmingcheng" type="text" id="wangzhanmingcheng" class="form-control2" />  ��ַ��<input name="wangzhi" type="text" id="wangzhi" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='youqinglianjie_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>��վ����</td>
    <td bgcolor='#cccccc'>��ַ</td>
    <td bgcolor='#cccccc' width='90' align='center'>logo</td>
    
	 
    <td width="138" height="30" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"youqinglianjie"); 
    String url = "youqinglianjie_list.jsp?1=1"; 
    String sql =  "select * from youqinglianjie where 1=1";
	
if(request.getParameter("wangzhanmingcheng")=="" ||request.getParameter("wangzhanmingcheng")==null ){}else{sql=sql+" and wangzhanmingcheng like '%"+request.getParameter("wangzhanmingcheng")+"%'";}
if(request.getParameter("wangzhi")=="" ||request.getParameter("wangzhi")==null ){}else{sql=sql+" and wangzhi like '%"+request.getParameter("wangzhi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("wangzhanmingcheng") %></td>
    <td><%=map.get("wangzhi") %></td>
    <td width='90' align='center'><a href='<%=map.get("logo") %>' target='_blank'><img src='<%=map.get("logo") %>' width=88 height=99 border=0 /></a></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="youqinglianjie_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="youqinglianjie_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a>  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

