package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newsadd
 */
@WebServlet("/newsadd")
public class newsadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newsadd() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		 String title=request.getParameter("title"); 
		 String author=request.getParameter("author");  
		 String createtime=request.getParameter("createtime"); 
		 String contents=request.getParameter("contents");
		 String source=request.getParameter("source"); 
		 String typename=request.getParameter("typename"); 
		 
		 DBHelper Dal=new DBHelper();
		 String strSql=" insert into AaNews (title,author,createtime,contents,source,typeid) values (?,?,?,?,?,?) "; 
		 List<Object> params = new ArrayList<Object>();
		 params.add(title);
		 params.add(author);
		 params.add(createtime);
		 params.add(contents);
		 params.add(source);
		 params.add(typename);
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>保存成功,5秒之后发生跳转到新增页面继续发布</font>");
        response.setHeader("Refresh", "5;URL="+request.getContextPath()+"/admin/newsadd.jsp");
	}

}
