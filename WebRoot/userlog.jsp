<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>用户登陆</title>
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
            <h2>◇◆ 用户登陆 ◆◇</h2>
          </div>
        <div class="row">
         
		  
                       <table width="1366" height="593" border="0" cellpadding="0" cellspacing="0" background="qtimages/qtlogin.jpg">
      <tr>
        <td><table width="100%" height="542" border="0">
          <tr>
            <td width="66%" height="69">&nbsp;</td>
            <td width="28%">&nbsp;</td>
            <td width="6%">&nbsp;</td>
          </tr>
          <tr>
            <td height="402">&nbsp;</td>
            <td>	
			<%@ include file="qtuserlog.jsp"%>	
			
			</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="61">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table>
	
        </div>
      </div>
    </section>
	
<%@ include file="qtdown.jsp"%>	
  </main>
</body>
</html>
