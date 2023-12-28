<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>学生信息</title>
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

  String id="";

 
  
 

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var xuehaoobj = document.getElementById("xuehao"); if(xuehaoobj.value==""){document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>请输入学号</font>";return false;}else{document.getElementById("clabelxuehao").innerHTML="  "; } 	var xuehaoobj = document.getElementById("xuehao");  
if(xuehaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=xueshengxinxi&col=xuehao&value="+xuehaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>学号已存在</font>";  
return false;
}else{document.getElementById("clabelxuehao").innerHTML="  ";  
}  
} 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	var xueshengxingmingobj = document.getElementById("xueshengxingming"); if(xueshengxingmingobj.value==""){document.getElementById("clabelxueshengxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入学生姓名</font>";return false;}else{document.getElementById("clabelxueshengxingming").innerHTML="  "; } 	var xueshengxingmingobj = document.getElementById("xueshengxingming");  
if(xueshengxingmingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=xueshengxinxi&col=xueshengxingming&value="+xueshengxingmingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelxueshengxingming").innerHTML="&nbsp;&nbsp;<font color=red>学生姓名已存在</font>";  
return false;
}else{document.getElementById("clabelxueshengxingming").innerHTML="  ";  
}  
} 	var shoujiobj = document.getElementById("shouji"); if(shoujiobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(shoujiobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(shoujiobj.value)){document.getElementById("clabelshouji").innerHTML=""; }else{document.getElementById("clabelshouji").innerHTML="&nbsp;&nbsp;<font color=red>必需电话格式[7或8位电话，或11位手机]</font>"; return false;}}      var youxiangobj = document.getElementById("youxiang"); if(youxiangobj.value!=""){ if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(youxiangobj.value)){document.getElementById("clabelyouxiang").innerHTML=""; }else{document.getElementById("clabelyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>必需邮箱格式</font>"; return false;}}      var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>"; return false;}}      
}
function gow()
{
	document.location.href="xueshengxinxiadd.jsp?id=<%=id%>";
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
            <h2>◇◆ 学生信息 ◆◇</h2>
          </div>
        <div class="row">
         
		      <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("issh","否");






new CommDAO().insert(request,response,"xueshengxinxi",ext,true,false,""); 

 }
%>
   <form  action="xueshengxinxiadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">学号：</td><td><input name='xuehao' type='text' id='xuehao' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelxuehao' /></td></tr>		<tr><td  width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelmima' /></td></tr>		<tr><td  width="200">学生姓名：</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelxueshengxingming' /></td></tr>		<tr><td>性别：</td><td><select name='xingbie' id='xingbie' class="xingbie"><option value="男">男</option><option value="女">女</option></select></td></tr>		<tr><td  width="200">院系：</td><td><input name='yuanxi' type='text' id='yuanxi' value='' onblur='' class="user" /></td></tr>		<tr><td>专业：</td><td><select name='zhuanye' id='zhuanye' class="xingbie" ><option value="哲学">哲学</option><option value="经济学">经济学</option><option value="法学">法学</option><option value="教育学">教育学</option><option value="文学">文学</option><option value="历史学">历史学</option><option value="理学">理学</option><option value="工学">工学</option><option value="农学">农学</option><option value="军事学">军事学</option><option value="管理学">管理学</option><option value="艺术学">艺术学</option><option value="计算机">计算机</option><option value="土建">土建</option><option value="外贸">外贸</option><option value="外语">外语</option><option value="医学">医学</option></select></td></tr>		<tr><td  width="200">班级：</td><td><input name='banji' type='text' id='banji' value='' onblur='' class="user" /></td></tr>		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='checkform()' class="user" />&nbsp;<label id='clabelshouji' />必需电话格式[7或8位电话，或11位手机]</td></tr>		<tr><td  width="200">邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='' onblur='checkform()' class="user" />&nbsp;<label id='clabelyouxiang' />必需邮箱格式</td></tr>		<tr><td  width="200">身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' class="user" style="width:600px;" />&nbsp;<label id='clabelshenfenzheng' />必需身份证格式</td></tr>		<tr><td  width="200">照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' onblur='' class="user" />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')"   class="content-form-signup" /></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="user" style="width:600px;height:80px;" ></textarea></td></tr>		
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
