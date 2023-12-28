<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>服务信息</title>
	
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
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
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
  修改服务信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>服务名称：</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='<%= mmm.get("fuwumingcheng")%>' class="form-control" /></td></tr>     <tr><td>专业：</td><td><select name='zhuanye' id='zhuanye' class="form-control2" ><option value="哲学">哲学</option><option value="经济学">经济学</option><option value="法学">法学</option><option value="教育学">教育学</option><option value="文学">文学</option><option value="历史学">历史学</option><option value="理学">理学</option><option value="工学">工学</option><option value="农学">农学</option><option value="军事学">军事学</option><option value="管理学">管理学</option><option value="艺术学">艺术学</option><option value="计算机">计算机</option><option value="土建">土建</option><option value="外贸">外贸</option><option value="外语">外语</option><option value="医学">医学</option></select></td></tr><script language="javascript">document.form1.zhuanye.value='<%=mmm.get("zhuanye")%>';</script>     <tr><td>类别：</td><td><input name='leibie' type='text' id='leibie' value='<%= mmm.get("leibie")%>' class="form-control" /></td></tr>     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' class="form-control" /></td></tr>     <tr><td>服务简介：</td><td><textarea name='fuwujianjie' cols='50' rows='5' id='fuwujianjie' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("fuwujianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


