package servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.zxing.WriterException;

import util.QRCodeUtil;


public class QRCode extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");//设置对客户端请求和数据库取值时的编码
		response.setCharacterEncoding("utf-8");//指定服务器响应给浏览器的编码
		String website = request.getParameter("website");
		try {
			QRCodeUtil.genGR(website, response.getOutputStream());
		} catch (WriterException e) {
			e.printStackTrace();
		}
		//String website = request.getAttribute("website").toString();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doGet(request, response);
	}

}
