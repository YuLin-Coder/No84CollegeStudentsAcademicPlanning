<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ԤԼ����</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����ԤԼ�����б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ԤԼ���ţ�<input name="yuyuedanhao" type="text" id="yuyuedanhao" class="form-control2"  />  �������ƣ�<input name="fuwumingcheng" type="text" id="fuwumingcheng" class="form-control2"  />  רҵ��<input name="zhuanye" type="text" id="zhuanye" class="form-control2"  />  ���<input name="leibie" type="text" id="leibie" class="form-control2"  />  ԤԼ�ˣ�<input name="yuyueren" type="text" id="yuyueren" class="form-control2"  />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='yuyuefuwu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>ԤԼ����</td>    <td bgcolor='#cccccc'>��������</td>    <td bgcolor='#cccccc'>רҵ</td>    <td bgcolor='#cccccc'>���</td>    <td bgcolor='#cccccc'>�۸�</td>    <td bgcolor='#cccccc'>ԤԼʱ��</td>    <td bgcolor='#cccccc'>ԤԼ��</td>        <td bgcolor='#cccccc' width='80' align='center'>�Ƿ�֧��</td>    
	
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yuyuefuwu"); 
    String url = "yuyuefuwu_list.jsp?1=1"; 
    String sql =  "select * from yuyuefuwu where 1=1";
	if(request.getParameter("yuyuedanhao")=="" ||request.getParameter("yuyuedanhao")==null ){}else{sql=sql+" and yuyuedanhao like '%"+request.getParameter("yuyuedanhao")+"%'";}if(request.getParameter("fuwumingcheng")=="" ||request.getParameter("fuwumingcheng")==null ){}else{sql=sql+" and fuwumingcheng like '%"+request.getParameter("fuwumingcheng")+"%'";}if(request.getParameter("zhuanye")=="" ||request.getParameter("zhuanye")==null ){}else{sql=sql+" and zhuanye like '%"+request.getParameter("zhuanye")+"%'";}if(request.getParameter("leibie")=="" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+request.getParameter("leibie")+"%'";}if(request.getParameter("yuyueren")=="" ||request.getParameter("yuyueren")==null ){}else{sql=sql+" and yuyueren like '%"+request.getParameter("yuyueren")+"%'";}
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
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="yuyuefuwu_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

