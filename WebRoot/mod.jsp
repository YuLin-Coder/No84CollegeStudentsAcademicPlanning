<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title>�޸�����</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    

  </head>

<script>
function check()
{
	if(document.form1.ymm.value=="")
	{
		bootbox.alert("������ԭ����");
		document.form1.ymm.focus();
		return false;
	}
	if(document.form1.xmm1.value=="")
	{
		bootbox.alert("������������");
		document.form1.xmm1.focus();
		return false;
	}
	if(document.form1.xmm2.value=="")
	{
		bootbox.alert("������ȷ������");
		document.form1.xmm2.focus();
		return false;
	}
	if (document.form1.xmm1.value!=document.form1.xmm2.value)
	{
		bootbox.alert("�Բ����������벻һ��������������");
		document.form1.xmm1.value="";
		document.form1.xmm2.value="";
		document.form1.xmm1.focus();
		return false;
	}
}

</script>
<script type="text/javascript">
<!--


<%
//out.print(Info.getadminUser(request).get("id").toString());
String error = (String)request.getAttribute("error");
if(error!=null)
{
 %>
 alert("ԭ�����������");
<%}%>


<%
String suc = (String)request.getAttribute("suc");
if(suc!=null)
{
 %>
 alert("�޸ĳɹ�");
<%}%>
 
 //-->
</script>
  <body >
    <form action="jspmdxsxyghzxfwpthsg9936W1B4?ac=adminuppass" name="form1" method="post">
    <table width="32%" height="126" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="cccccc" style="border-collapse:collapse">
    <tr>
      <td colspan="2"><div align="center">�޸�����</div></td>
    </tr>
    <tr>
      <td>ԭ���룺</td>
      <td><input name="ymm" type="text" id="ymm" class="form-control" placeholder="������ԭ����" /></td>
    </tr>
    <tr>
      <td>�����룺</td>
      <td><input name="xmm1" type="password" id="xmm1" class="form-control" placeholder="������������" /></td>
    </tr>
    <tr>
      <td>ȷ�����룺</td>
      <td><input name="xmm2" type="password" id="xmm2" class="form-control" placeholder="������ȷ������" /></td>
    </tr>
    <tr>
      <td height="45" colspan="2" align="center"><input name="Submit" type="submit"  onClick="return check()" value="ȷ��"  class="btn btn-info btn-small" />
      <input name="Submit2" type="reset" value="����" class="btn btn-info btn-small" /></td>
      </tr>
  </table>
  </form>
  </body>
</html>

<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
