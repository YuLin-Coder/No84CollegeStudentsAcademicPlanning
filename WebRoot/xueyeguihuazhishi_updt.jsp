<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ѧҵ�滮֪ʶ</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"xueyeguihuazhishi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xueyeguihuazhishi"); 

%>
  <form  action="xueyeguihuazhishi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�ѧҵ�滮֪ʶ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>���⣺</td><td><input name='biaoti' type='text' id='biaoti' value='<%= mmm.get("biaoti")%>' class="form-control" /></td></tr>     <tr><td>רҵ��</td><td><select name='zhuanye' id='zhuanye' class="form-control2" ><option value="��ѧ">��ѧ</option><option value="����ѧ">����ѧ</option><option value="��ѧ">��ѧ</option><option value="����ѧ">����ѧ</option><option value="��ѧ">��ѧ</option><option value="��ʷѧ">��ʷѧ</option><option value="��ѧ">��ѧ</option><option value="��ѧ">��ѧ</option><option value="ũѧ">ũѧ</option><option value="����ѧ">����ѧ</option><option value="����ѧ">����ѧ</option><option value="����ѧ">����ѧ</option><option value="�����">�����</option><option value="����">����</option><option value="��ó">��ó</option><option value="����">����</option><option value="ҽѧ">ҽѧ</option></select></td></tr><script language="javascript">document.form1.zhuanye.value='<%=mmm.get("zhuanye")%>';</script>     <tr><td>���</td><td><input name='leibie' type='text' id='leibie' value='<%= mmm.get("leibie")%>' class="form-control" /></td></tr>     <tr><td>������</td><td><input name='fujian' type='text' id='fujian' size='50' value='<%= mmm.get("fujian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('fujian')"/></div></td></tr>     <tr><td>���ݣ�</td><td><textarea name='neirong' cols='50' rows='5' id='neirong' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("neirong")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


