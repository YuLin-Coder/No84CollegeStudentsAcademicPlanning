<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>服务信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有服务信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  服务名称：<input name="fuwumingcheng" type="text" id="fuwumingcheng" class="form-control2"  />  专业：<select name='zhuanye' id='zhuanye' class="form-control2"><option value="">所有</option></select>  类别：<input name="leibie" type="text" id="leibie" class="form-control2"  />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='fuwuxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>服务名称</td>    <td bgcolor='#cccccc'>专业</td>    <td bgcolor='#cccccc'>类别</td>    <td bgcolor='#cccccc'>价格</td>        
	
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"fuwuxinxi"); 
    String url = "fuwuxinxi_list.jsp?1=1"; 
    String sql =  "select * from fuwuxinxi where 1=1";
	if(request.getParameter("fuwumingcheng")=="" ||request.getParameter("fuwumingcheng")==null ){}else{sql=sql+" and fuwumingcheng like '%"+request.getParameter("fuwumingcheng")+"%'";}if(request.getParameter("zhuanye")=="" ||request.getParameter("zhuanye")==null ){}else{sql=sql+" and zhuanye like '%"+request.getParameter("zhuanye")+"%'";}if(request.getParameter("leibie")=="" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+request.getParameter("leibie")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("fuwumingcheng") %></td>    <td><%=map.get("zhuanye") %></td>    <td><%=map.get("leibie") %></td>    <td><%=map.get("jiage") %></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="fuwuxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

