
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');parent.location=parent.location;</script>");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>在线评论</title>

<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>

<body>
<%
  String id=request.getParameter("id");
  String biao=request.getParameter("biao");
  HashMap ext = new HashMap(); 
//String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
//ext.put("tglparentid",tglparentid); 
//ext.put("issh","否"); 
new CommDAO().insert(request,response,"pinglun",ext,true,true,""); 

   %>
   <script language="javascript">
   function check()
{
	if(document.form1.pinglunneirong.value==""){alert("请输入评论内容");document.form1.pinglunneirong.focus();return false;}
}

   </script>
    <form  action="hsgpinglun.jsp?f=f"  method="post" name="form1"  onsubmit="return checkform();">

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#333333" style="border-collapse:collapse" class="newsline">
    <tr style="display:none">
      <td>编号：</td>
      <td><input name='xinwenID' type='text' id='xinwenID' value='<%=id%>' readonly="readonly" />
        &nbsp;*</td>
    </tr>
    <tr>
      <td>评分：</td>
      <td><select name="pingfen" id="pingfen">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
      </select>
      </td>
    </tr>
    <tr>
      <td>评论内容：</td>
      <td><textarea name='pinglunneirong' cols='50' rows='5' id='pinglunneirong'></textarea>
        &nbsp;*</td>
    </tr>
    <tr>
      <td>评论人：</td>
      <td><input name='pinglunren' type='text' id='pinglunren' value="<%=request.getSession().getAttribute("username")%>" />
        &nbsp;*</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit5" value="提交" onclick="return check();" />
          <input type="reset" name="Submit22" value="重置" />
          <input name="biao" type="hidden" id="biao" value="<%=biao%>" /></td>
    </tr>
 
</table>
 </form>
</body>
</html>
