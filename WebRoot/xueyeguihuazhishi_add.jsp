<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>学业规划知识</title>
	
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
	document.location.href="xueyeguihuazhishi_add.jsp?id=<%=id%>";
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










new CommDAO().insert(request,response,"xueyeguihuazhishi",ext,true,false,""); 

}

%>

  <body >
 <form  action="xueyeguihuazhishi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加学业规划知识:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">标题：</td><td><input name='biaoti' type='text' id='biaoti' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelbiaoti' /></td></tr>		<tr><td>专业：</td><td><select name='zhuanye' id='zhuanye' class="form-control2" ><option value="哲学">哲学</option><option value="经济学">经济学</option><option value="法学">法学</option><option value="教育学">教育学</option><option value="文学">文学</option><option value="历史学">历史学</option><option value="理学">理学</option><option value="工学">工学</option><option value="农学">农学</option><option value="军事学">军事学</option><option value="管理学">管理学</option><option value="艺术学">艺术学</option><option value="计算机">计算机</option><option value="土建">土建</option><option value="外贸">外贸</option><option value="外语">外语</option><option value="医学">医学</option></select>&nbsp;*<label id='clabelzhuanye' /></td></tr>		<tr><td  width="200">类别：</td><td><input name='leibie' type='text' id='leibie' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">附件：</td><td><input name='fujian' type='text' id='fujian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:12px;">&nbsp;<input type='button' value='上传' onClick="up('fujian')"  /></div></td></tr>		<tr><td  width="200">内容：</td><td><textarea name='neirong'  id='neirong' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
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
 
	var biaotiobj = document.getElementById("biaoti"); if(biaotiobj.value==""){document.getElementById("clabelbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";return false;}else{document.getElementById("clabelbiaoti").innerHTML="  "; } 	var zhuanyeobj = document.getElementById("zhuanye"); if(zhuanyeobj.value==""){document.getElementById("clabelzhuanye").innerHTML="&nbsp;&nbsp;<font color=red>请输入专业</font>";return false;}else{document.getElementById("clabelzhuanye").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
