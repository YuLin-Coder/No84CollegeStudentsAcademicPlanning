<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>预约服务</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"fuwuxinxi");
 String fuwumingcheng="";  	String zhuanye="";  	String leibie="";  	String jiage="";  	
 fuwumingcheng=(String)mlbdq.get("fuwumingcheng");  	zhuanye=(String)mlbdq.get("zhuanye");  	leibie=(String)mlbdq.get("leibie");  	jiage=(String)mlbdq.get("jiage");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="yuyuefuwu_add.jsp?id=<%=id%>";
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




ext.put("iszf","否");





new CommDAO().insert(request,response,"yuyuefuwu",ext,true,false,""); 

}

%>

  <body >
 <form  action="yuyuefuwu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加预约服务:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">预约单号：</td><td><input name='yuyuedanhao' type='text' id='yuyuedanhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">服务名称：</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.fuwumingcheng.value='<%=fuwumingcheng%>';document.form1.fuwumingcheng.setAttribute("readOnly",'true');</script>		<tr><td  width="200">专业：</td><td><input name='zhuanye' type='text' id='zhuanye' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.zhuanye.value='<%=zhuanye%>';document.form1.zhuanye.setAttribute("readOnly",'true');</script>		<tr><td  width="200">类别：</td><td><input name='leibie' type='text' id='leibie' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';document.form1.leibie.setAttribute("readOnly",'true');</script>		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiage.value='<%=jiage%>';document.form1.jiage.setAttribute("readOnly",'true');</script>		<tr><td>预约时段：</td><td><select name='yuyueshiduan' id='yuyueshiduan' class="form-control2" ><option value="8:30-10:00">8:30-10:00</option><option value="10:00-11:30">10:00-11:30</option><option value="13:00-14:30">13:00-14:30</option><option value="14:30-16:00">14:30-16:00</option></select></td></tr>		<tr><td  width="200">预约人：</td><td><input name='yuyueren' type='text' id='yuyueren' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
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
 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
