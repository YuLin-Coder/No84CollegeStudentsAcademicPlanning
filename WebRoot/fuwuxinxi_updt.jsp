<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	
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

new CommDAO().update(request,response,"fuwuxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"fuwuxinxi"); 

%>
  <form  action="fuwuxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸ķ�����Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>�������ƣ�</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='<%= mmm.get("fuwumingcheng")%>' class="form-control" /></td></tr>     <tr><td>רҵ��</td><td><select name='zhuanye' id='zhuanye' class="form-control2" ><option value="��ѧ">��ѧ</option><option value="����ѧ">����ѧ</option><option value="��ѧ">��ѧ</option><option value="����ѧ">����ѧ</option><option value="��ѧ">��ѧ</option><option value="��ʷѧ">��ʷѧ</option><option value="��ѧ">��ѧ</option><option value="��ѧ">��ѧ</option><option value="ũѧ">ũѧ</option><option value="����ѧ">����ѧ</option><option value="����ѧ">����ѧ</option><option value="����ѧ">����ѧ</option><option value="�����">�����</option><option value="����">����</option><option value="��ó">��ó</option><option value="����">����</option><option value="ҽѧ">ҽѧ</option></select></td></tr><script language="javascript">document.form1.zhuanye.value='<%=mmm.get("zhuanye")%>';</script>     <tr><td>���</td><td><input name='leibie' type='text' id='leibie' value='<%= mmm.get("leibie")%>' class="form-control" /></td></tr>     <tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' class="form-control" /></td></tr>     <tr><td>�����飺</td><td><textarea name='fuwujianjie' cols='50' rows='5' id='fuwujianjie' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("fuwujianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


