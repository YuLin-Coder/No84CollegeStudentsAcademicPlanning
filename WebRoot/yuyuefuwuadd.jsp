<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>预约服务</title>
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
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";

 
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"fuwuxinxi");
 String fuwumingcheng="";  	String zhuanye="";  	String leibie="";  	String jiage="";  	
 fuwumingcheng=(String)mlbdq.get("fuwumingcheng");  	zhuanye=(String)mlbdq.get("zhuanye");  	leibie=(String)mlbdq.get("leibie");  	jiage=(String)mlbdq.get("jiage");  	 
 

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	
}
function gow()
{
	document.location.href="yuyuefuwuadd.jsp?id=<%=id%>";
}
popheight=850;
</script>


<body id="body">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
  <main id="main">
    <section id="services" class="wow fadeInUp">
      <div class="container">
	   <div class="section-header">
            <h2>◇◆ 预约服务 ◆◇</h2>
          </div>
        <div class="row">
         
		      <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){




ext.put("iszf","否");





new CommDAO().insert(request,response,"yuyuefuwu",ext,true,false,""); 

 }
%>
   <form  action="yuyuefuwuadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">预约单号：</td><td><input name='yuyuedanhao' type='text' id='yuyuedanhao' value='<%=Info.getID()%>' onblur='' class="user" /></td></tr>		<tr><td  width="200">服务名称：</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='' onblur='' class="user"  readonly='readonly' /></td></tr><script language="javascript">document.form1.fuwumingcheng.value='<%=fuwumingcheng%>';document.form1.fuwumingcheng.setAttribute("readOnly",'true');</script>		<tr><td  width="200">专业：</td><td><input name='zhuanye' type='text' id='zhuanye' value='' onblur='' class="user"  readonly='readonly' /></td></tr><script language="javascript">document.form1.zhuanye.value='<%=zhuanye%>';document.form1.zhuanye.setAttribute("readOnly",'true');</script>		<tr><td  width="200">类别：</td><td><input name='leibie' type='text' id='leibie' value='' onblur='' class="user"  readonly='readonly' /></td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';document.form1.leibie.setAttribute("readOnly",'true');</script>		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' class="user"  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiage.value='<%=jiage%>';document.form1.jiage.setAttribute("readOnly",'true');</script>		<tr><td>预约时段：</td><td><select name='yuyueshiduan' id='yuyueshiduan' class="xingbie" ><option value="8:30-10:00">8:30-10:00</option><option value="10:00-11:30">10:00-11:30</option><option value="13:00-14:30">13:00-14:30</option><option value="14:30-16:00">14:30-16:00</option></select></td></tr>		<tr><td  width="200">预约人：</td><td><input name='yuyueren' type='text' id='yuyueren' onblur='' class="user" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="user" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return checkform();" class="content-form-signup" />
      <input type="reset" name="reset" value="重置" class="content-form-signup" /></td>
    </tr>
	</table>
  </form>	
						  
        </div>
      </div>
    </section>
<%@ include file="qtdown.jsp"%>
  </main>

</body> 
</html>

<!--yoxudixtu-->
