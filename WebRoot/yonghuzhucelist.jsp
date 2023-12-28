<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>用户列表</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Author" name="WebThemez">
  <link href="qtimages/images/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="qtimages/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="qtimages/lib/animate/animate.min.css" rel="stylesheet">
  <link href="qtimages/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="qtimages/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="qtimages/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="qtimages/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="qtimages/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="qtimages/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="qtimages/css/custom.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body id="body">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
  <main id="main">
   

	
    <section id="services" class="wow fadeInUp">
      <div class="container">
	   <div class="section-header">
            <h2>◇◆ 用户列表 ◆◇</h2>
          </div>
        <div class="row">
         
		     
		<form name="form1" id="form1" method="post" action="">
   搜索: 用户名：<input name="yonghuming" type="text" id="yonghuming" size="12" /> 
   姓名：<input name="xingming" type="text" id="xingming" size="12" /> 
   QQ：<input name="QQ" type="text" id="QQ" size="12" /> 
   邮箱：<input name="youxiang" type="text" id="youxiang" size="12" /> 
   电话：<input name="dianhua" type="text" id="dianhua" size="12" /> 
   身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" size="15" />
   <input type="submit" name="Submit" value="查找" />
</form>
 <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
  <tr>
    <td width="50" align="center" bgcolor="CCFFFF">序号</td>
    <td width="100" bgcolor='#CCFFFF'>用户名</td>
   
    <td width="100" bgcolor='#CCFFFF'>姓名</td>
    <td width="50" bgcolor='#CCFFFF'>性别</td>
    <td width="108" bgcolor='#CCFFFF'>出生年月</td>
    <td width="100" bgcolor='#CCFFFF'>QQ</td>
    <td width="100" bgcolor='#CCFFFF'>邮箱</td>
    <td width="100" bgcolor='#CCFFFF'>电话</td>
    <td width="259" bgcolor='#CCFFFF'>身份证</td>
    <td width="88" align="center" bgcolor='#CCFFFF'>头像</td>
    <td width="200" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="50" align="center" bgcolor="CCFFFF">详细</td>
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
    <td width="50" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td><td><%=map.get("xingming") %></td><td><%=map.get("xingbie") %></td><td><%=map.get("chushengnianyue") %></td><td><%=map.get("QQ") %></td><td><%=map.get("youxiang") %></td><td><%=map.get("dianhua") %></td><td><%=map.get("shenfenzheng") %></td><td><a href='<%=map.get("touxiang") %>' target='_blank'><img src='<%=map.get("touxiang") %>' width=88 height=99 border=0 /></a></td><td width="200" align="center"><%=map.get("addtime") %></td>
   
    <td width="50" align="center"><a href="yonghuzhucedetail.jsp?id=<%=map.get("id")%>">详细</a></td>
  </tr>
  	<%
 
   }
   %>
</table>
<br>
${page.info } 
						  
        </div>
      </div>
    </section>
<%@ include file="qtdown.jsp"%>
  </main>
</body>
</html>
