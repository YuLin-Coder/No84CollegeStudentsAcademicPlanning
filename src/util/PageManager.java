

package util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import dao.CommDAO;



public class PageManager {
	private PageManager() {

	}


	// Ĭ��һҳ����¼��
	public static final int DEFAULTPAGESIZE = 20;

	// ��ҳ��
	public static final int segment = 10;

	// ��ǰҳ��
	protected int currentPage;

	// һҳ����
	protected int pageSize;

	// ��ҳ��
	protected long pageNumber;

	// �ܼ�¼��
	protected long count;

	// ����
	protected Collection collection;

	// ���ݲ�ѯ����
	protected CommDAO dao = new CommDAO();

	// ���ֲ����
	protected String info;

	// ����·��
	protected String path;

	// �������������
	protected HttpServletRequest request;

	/*
	 * ����ֻ�Ǽӵ�·����ȥ
	 */
	protected String parameter = "";

	/**
	 * 
	 * @param ��һҳ�ķ�ҳ����
	 * @param һҳ����¼��
	 * @param ��ǰHttpServletRequest����
	 * @param ���ݿ��������
	 */
	protected PageManager(String path, int pageSize, HttpServletRequest request) {
		// ����һ��dao����
		this.currentPage = 1;
		this.pageNumber = 1;
		this.count = 0;
		this.pageSize = pageSize <= 0 ? DEFAULTPAGESIZE : pageSize;
		this.request = request;
		this.path = path;

		request.setAttribute("page", this);

		try {
			this.currentPage = Integer.parseInt(request
					.getParameter("currentPage")) <= 0 ? 1 : Integer
					.parseInt(request.getParameter("currentPage"));

		} catch (Exception e) {

			try {
				this.currentPage = Integer.parseInt((String) request
						.getSession().getAttribute("currentPage"));

			} catch (Exception e1) {
				this.currentPage = 1;

			}

		}

	}
	

	/**
	 * 
	 * @param ��һҳ�ķ�ҳ����
	 * @param һҳ����¼��
	 * @param ��ǰHttpServletRequest����
	 * @param ���ݿ��������
	 */
	public static PageManager getPage(String path, int pageSize,
			HttpServletRequest request) {
		return new PageManager(path, pageSize, request);

	}

	/**
	 * 
	 * 
	 * @param hql���
	 * 
	 */
	public void doList(String hql) {
        
		this.count = this.dao.select(hql).size();
		if (this.count != 0) {
			this.pageNumber = count % this.pageSize == 0 ? this.count
					/ this.pageSize : this.count / this.pageSize + 1;
			if (this.currentPage > this.pageNumber)
				this.currentPage = (int) this.pageNumber;

		}
		this.request.getSession().setAttribute("currentPage",
				String.valueOf(this.currentPage));
		this.collection = this.dao.select(hql,
				this.currentPage , this.pageSize);

		this.refreshUrl();
	}

	/**
	 * 
	 * @param ��ѯ��������
	 *            ��û������ֻ���б�Ͳ�ʹ���������
	 */
	public void addParameter(List parameter) {

		StringBuffer para = new StringBuffer("");
		if (parameter != null && parameter.size() != 0) {
			Iterator iterator = parameter.iterator();
			while (iterator.hasNext()) {
				para.append("&").append(iterator.next().toString());
			}
		}
		this.parameter = para.toString();

	}

	/**
	 * ˢ�·�ҳ·��
	 * 
	 */
	protected void refreshUrl() {
		StringBuffer buf = new StringBuffer();
		buf.append("<font color='#1157B7'>��").append(count);
		buf.append("��");
		buf.append("&nbsp;&nbsp;");
		buf.append("��").append(this.currentPage).append("/").append(
				this.pageNumber).append("ҳ");
		buf.append("&nbsp;&nbsp;&nbsp;&nbsp;");
		if (this.currentPage == 1)
			buf.append("��ҳ");
		else
			buf.append("<a href='").append(this.path).append("&currentPage=1")
					.append(parameter)
					.append("' class='ls'>").append("��ҳ")
					.append("</a>");
		// ////////////////////////#1157B7
		buf.append("&nbsp;&nbsp;&nbsp;&nbsp;");

		if (this.currentPage > 1) {
			buf.append("<a href='").append(this.path).append("&currentPage=")
					.append(currentPage - 1).append(parameter).append(
							"' class='ls'>").append("��ҳ")
					.append("</a>");
		} else {
			buf.append("��ҳ");

		}
		buf.append("&nbsp;&nbsp;");

		int currentSegment = this.currentPage % segment == 0 ? this.currentPage
				/ segment : this.currentPage / segment + 1;

		/*for (int i = 1; i <= this.pageNumber; i++) {
			if (this.currentPage == i)
				buf.append("<font color='red'>").append(i).append("</font>");

			else
				buf.append("<a href='").append(this.path).append(
						"&currentPage=").append(i).append(parameter).append(
						"' class='ls'>[").append(i).append(
						"]</a>");
		}*/

		buf.append("&nbsp;&nbsp;");
		if (this.currentPage < this.pageNumber) {
			buf.append("<a href='").append(this.path).append("&currentPage=")
					.append(currentPage + 1).append(parameter).append(
							"' class='ls'>").append("��ҳ")
					.append("</a>");
		} else {

			buf.append("��ҳ");

		}

		buf.append("&nbsp;&nbsp;&nbsp;&nbsp;");
		if (this.currentPage == this.pageNumber)
			buf.append("ĩҳ&nbsp;&nbsp;");
		else
			buf.append("<a href='").append(this.path).append("&currentPage=")
					.append(this.pageNumber).append(parameter).append(
							"' class='ls'>").append("ĩҳ")
					.append("</a></font>&nbsp;&nbsp;");
		// ////////////////////
		// for (int i = 0; i < this.pageNumber; i++) {
		// if (this.currentPage == i + 1) {
		// buf.append("<font color=red>[" + (i + 1) + "]</font>").append(
		// "&nbsp;");
		// } else {
		// buf.append("<a href='").append(this.path).append(
		// "&currentPage=").append(i + 1).append(parameter)
		// .append("' style='TEXT-DECORATION:none'>").append(
		// "[" + (i + 1) + "]").append("</a>&nbsp;");
		// }

		// }
		buf.append("<select onchange=\"javascript:window.location='").append(
				this.path).append("&currentPage='+").append(
				"this.options[this.selectedIndex].value").append(parameter)
				.append("\">");
		for (int i = 0; i < this.pageNumber; i++) {
			if (this.currentPage == i + 1)
				buf.append("<option value=" + (i + 1)
						+ " selected=\"selected\">" + (i + 1) + "</option>");
			else
				buf.append("<option value=" + (i + 1) + ">" + (i + 1)
						+ "</option>");

		}
		buf.append("</select>");
		this.info = buf.toString();
		
	}

	public Collection getCollection() {
		return collection;
	}

	public long getCount() {
		return count;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public long getPageNumber() {
		return pageNumber;
	}

	public int getPageSize() {
		return pageSize;
	}

	public String getInfo() {
		return info;
	}
	
	public static ArrayList<HashMap> getPages(String url,int pagesize,String sql,HttpServletRequest request )
	{
	     
		PageManager pageManager = PageManager.getPage(url, pagesize, request);
		  pageManager.doList(sql);
		  PageManager bean = (PageManager) request.getAttribute("page");
		 
		  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
		  return nlist;
	}

 
}
