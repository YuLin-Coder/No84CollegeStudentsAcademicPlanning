<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�û�ע��</title><script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:320,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("�������û���");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}
}
</script>

  <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"yonghuzhuce",ext,true,false,"yonghuzhuce_list.jsp"); 
HashMap mmm = new CommDAO().getmap(id,"yonghuzhuce"); 
%>
  <body >
 
  <form  action="yonghuzhuce_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="f1"  onsubmit="return checkform();">
  <br>
  �޸��û�ע��:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='' readonly="readonly" class="form-control" /> <div style="margin-top:16px;">������޸�</div> </td>
     </tr><tr><td>���룺</td><td><input name='mima' type='password' id='mima' value='' class="form-control" /></td></tr>
	 <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='' class="form-control" /></td></tr>
	 <tr><td>�Ա�</td><td><select name='xingbie' id='xingbie' class="form-control"><option value="��">��</option><option value="Ů">Ů</option></select></td></tr>
	 <tr><td>�������£�</td><td><input name='chushengnianyue' type='text' id='chushengnianyue' value='' class="form-control" onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' /></td></tr>
	 <tr><td>QQ��</td><td><input name='QQ' type='text' id='QQ' value='' class="form-control" /></td></tr>
	 <tr><td>���䣺</td><td><input name='youxiang' type='text' id='youxiang' value='' class="form-control" /></td></tr>
	 <tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='' class="form-control" /></td></tr>
	 <tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' class="form-control" /></td></tr>
	 <tr><td>ͷ��</td><td><input name='touxiang' type='text' id='touxiang' size='50' value='' class="form-control" /><div style="margin-top:12px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('touxiang')"/></div></td></tr>
	 <tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='' class="form-control" style="width:600px;" /></td></tr>
	 <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;"></textarea></td></tr>
    <tr style="height:40px;">
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>
<%=Info.tform(mmm,"f1")%> 

