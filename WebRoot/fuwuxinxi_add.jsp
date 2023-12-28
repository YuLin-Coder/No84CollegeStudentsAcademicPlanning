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
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="fuwuxinxi_add.jsp?id=<%=id%>";
}

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"fuwuxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="fuwuxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加服务信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">服务名称：</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelfuwumingcheng' /></td></tr>		<tr><td>专业：</td><td><select name='zhuanye' id='zhuanye' class="form-control2" ><option value="哲学">哲学</option><option value="经济学">经济学</option><option value="法学">法学</option><option value="教育学">教育学</option><option value="文学">文学</option><option value="历史学">历史学</option><option value="理学">理学</option><option value="工学">工学</option><option value="农学">农学</option><option value="军事学">军事学</option><option value="管理学">管理学</option><option value="艺术学">艺术学</option><option value="计算机">计算机</option><option value="土建">土建</option><option value="外贸">外贸</option><option value="外语">外语</option><option value="医学">医学</option></select></td></tr>		<tr><td  width="200">类别：</td><td><input name='leibie' type='text' id='leibie' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeljiage' />必需数字型</td></tr>		<tr><td  width="200">服务简介：</td><td><textarea name='fuwujianjie'  id='fuwujianjie' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var fuwumingchengobj = document.getElementById("fuwumingcheng"); if(fuwumingchengobj.value==""){document.getElementById("clabelfuwumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入服务名称</font>";return false;}else{document.getElementById("clabelfuwumingcheng").innerHTML="  "; } 	var fuwumingchengobj = document.getElementById("fuwumingcheng");  
if(fuwumingchengobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=fuwuxinxi&col=fuwumingcheng&value="+fuwumingchengobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelfuwumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>服务名称已存在</font>";  
return false;
}else{document.getElementById("clabelfuwumingcheng").innerHTML="  ";  
}  
} 	var jiageobj = document.getElementById("jiage"); if(jiageobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jiageobj.value)){document.getElementById("clabeljiage").innerHTML=""; }else{document.getElementById("clabeljiage").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
