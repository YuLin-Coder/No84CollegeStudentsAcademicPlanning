<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>������Ϣ</title>
	
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
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
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
  ��ӷ�����Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">�������ƣ�</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelfuwumingcheng' /></td></tr>		<tr><td>רҵ��</td><td><select name='zhuanye' id='zhuanye' class="form-control2" ><option value="��ѧ">��ѧ</option><option value="����ѧ">����ѧ</option><option value="��ѧ">��ѧ</option><option value="����ѧ">����ѧ</option><option value="��ѧ">��ѧ</option><option value="��ʷѧ">��ʷѧ</option><option value="��ѧ">��ѧ</option><option value="��ѧ">��ѧ</option><option value="ũѧ">ũѧ</option><option value="����ѧ">����ѧ</option><option value="����ѧ">����ѧ</option><option value="����ѧ">����ѧ</option><option value="�����">�����</option><option value="����">����</option><option value="��ó">��ó</option><option value="����">����</option><option value="ҽѧ">ҽѧ</option></select></td></tr>		<tr><td  width="200">���</td><td><input name='leibie' type='text' id='leibie' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">�۸�</td><td><input name='jiage' type='text' id='jiage' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeljiage' />����������</td></tr>		<tr><td  width="200">�����飺</td><td><textarea name='fuwujianjie'  id='fuwujianjie' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
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
 
	var fuwumingchengobj = document.getElementById("fuwumingcheng"); if(fuwumingchengobj.value==""){document.getElementById("clabelfuwumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>�������������</font>";return false;}else{document.getElementById("clabelfuwumingcheng").innerHTML="  "; } 	var fuwumingchengobj = document.getElementById("fuwumingcheng");  
if(fuwumingchengobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=fuwuxinxi&col=fuwumingcheng&value="+fuwumingchengobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelfuwumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>���������Ѵ���</font>";  
return false;
}else{document.getElementById("clabelfuwumingcheng").innerHTML="  ";  
}  
} 	var jiageobj = document.getElementById("jiage"); if(jiageobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jiageobj.value)){document.getElementById("clabeljiage").innerHTML=""; }else{document.getElementById("clabeljiage").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
