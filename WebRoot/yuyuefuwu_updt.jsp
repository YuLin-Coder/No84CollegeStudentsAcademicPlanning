<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ԤԼ����</title>
	
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

new CommDAO().update(request,response,"yuyuefuwu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yuyuefuwu"); 

%>
  <form  action="yuyuefuwu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�ԤԼ����:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>ԤԼ���ţ�</td><td><input name='yuyuedanhao' type='text' id='yuyuedanhao' value='<%= mmm.get("yuyuedanhao")%>' class="form-control" /></td></tr>     <tr><td>�������ƣ�</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='<%= mmm.get("fuwumingcheng")%>' class="form-control" /></td></tr>     <tr><td>רҵ��</td><td><input name='zhuanye' type='text' id='zhuanye' value='<%= mmm.get("zhuanye")%>' class="form-control" /></td></tr>     <tr><td>���</td><td><input name='leibie' type='text' id='leibie' value='<%= mmm.get("leibie")%>' class="form-control" /></td></tr>     <tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' class="form-control" /></td></tr>     <tr><td>ԤԼʱ�Σ�</td><td><select name='yuyueshiduan' id='yuyueshiduan' class="form-control2" ><option value="8:30-10:00">8:30-10:00</option><option value="10:00-11:30">10:00-11:30</option><option value="13:00-14:30">13:00-14:30</option><option value="14:30-16:00">14:30-16:00</option></select></td></tr><script language="javascript">document.form1.yuyueshiduan.value='<%=mmm.get("yuyueshiduan")%>';</script>     <tr><td>ԤԼ�ˣ�</td><td><input name='yuyueren' type='text' id='yuyueren' value='<%= mmm.get("yuyueren")%>' class="form-control" /></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


