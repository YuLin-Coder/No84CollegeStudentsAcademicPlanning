<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�û�ע��</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>
  <body >
  <p>�����û�ע���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����: �û�����<input name="yonghuming" type="text" id="yonghuming" class="form-control2" /> 
   ������<input name="xingming" type="text" id="xingming" class="form-control2"/> 
   QQ��<input name="QQ" type="text" id="QQ" size="12" /> 
   ���䣺<input name="youxiang" type="text" id="youxiang" class="form-control2"/> 
   �绰��<input name="dianhua" type="text" id="dianhua" class="form-control2" /> 
   ���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" style="border-collapse:collapse">  
  <tr height="30px">
    <td width="35" align="center" bgcolor="cccccc">���</td>
    <td width="44" bgcolor='#cccccc'>�û���</td>
    <td width="30" bgcolor='#cccccc'>����</td>
    <td width="30" bgcolor='#cccccc'>����</td>
    <td width="35" bgcolor='#cccccc'>�Ա�</td>
    <td width="59" bgcolor='#cccccc'>��������</td>
    <td width="22" bgcolor='#cccccc'>QQ</td>
    <td width="30" bgcolor='#cccccc'>����</td>
    <td width="38" bgcolor='#cccccc'>�绰</td>
    <td width="78" bgcolor='#cccccc'>���֤</td>
    <td width="94" bgcolor='#cccccc'>ͷ��</td>
    <td width="82" bgcolor='#cccccc'>��ַ</td>
    <td width="55" bgcolor='#cccccc'>��ע</td>
    <td width="94" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="52" align="center" bgcolor="cccccc">���</td>
    <td width="71" align="center" bgcolor="cccccc">����</td>
  </tr>
   <% 
   new CommDAO().delete(request,"yonghuzhuce"); 
    String url = "yonghuzhuce_list.jsp?1=1"; 
    String sql =  "select * from yonghuzhuce where 1=1 ";
	if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming").trim()+"%'";}
	if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming").trim()+"%'";}
	if(request.getParameter("QQ")=="" ||request.getParameter("QQ")==null ){}else{sql=sql+" and QQ like '%"+request.getParameter("QQ").trim()+"%'";}
	if(request.getParameter("youxiang")=="" ||request.getParameter("youxiang")==null ){}else{sql=sql+" and youxiang like '%"+request.getParameter("youxiang").trim()+"%'";}
	if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua").trim()+"%'";}
	if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng").trim()+"%'";}
    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,10,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td><td><%=map.get("mima") %></td><td><%=map.get("xingming") %></td><td><%=map.get("xingbie") %></td><td><%=map.get("chushengnianyue") %></td><td><%=map.get("QQ") %></td><td><%=map.get("youxiang") %></td><td><%=map.get("dianhua") %></td><td><%=map.get("shenfenzheng") %></td><td><a href='<%=map.get("touxiang") %>' target='_blank'><img src='<%=map.get("touxiang") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("dizhi") %></td><td><%=map.get("beizhu") %></td>
    <td width="94" align="center"><%=map.get("addtime") %></td>
    <td width="52" align="center"><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=yonghuzhuce" onClick="return confirm('ȷ��Ҫִ�д˲�����');"><%=map.get("issh")%></a></td>
    <td width="71" align="center"><a class="btn btn-info btn-small" href="yonghuzhuce_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="yonghuzhuce_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
 
   }
   %>
</table>
<br>
${page.info } 
  </body>
</html>
