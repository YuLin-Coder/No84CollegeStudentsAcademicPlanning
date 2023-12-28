<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
 <%
  String lb=request.getParameter("lb");
  //String lb=new String(request.getParameter("lb").getBytes("8859_1"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title><%=lb%></title>
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
            <h2>¡ó¡ô <%=lb%> ¡ô¡ó</h2>
          </div>
        <div class="row">
         
		        <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#FA9090" class="newsline" style="border-collapse:collapse">
                      <% 
    String url = "news.jsp?lb="+lb; 
    String sql =  "select * from xinwentongzhi where leibie='"+lb+"' ";
	if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("keyword").trim()+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,20,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
                    <tr height="35">
                        <td width="29" align="center"><%=i %></td>
                        <td width="428"><a href="gg_detail.jsp?id=<%=map.get("id") %>"><%=map.get("biaoti") %></a></td>
                        <td width="74">±»µã»÷<%=map.get("dianjilv") %>´Î</td>
                        <td width="146" align="center"><%=map.get("addtime") %></td>
                      </tr>
                      <%} %>
                    </table>
                      <br>
 <div class="fy">${page.info } </div>
						  
        </div>
      </div>
    </section>
<%@ include file="qtdown.jsp"%>
  </main>
</body>
</html>
