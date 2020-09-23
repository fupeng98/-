package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newsedit
 */
@WebServlet("/newsedit")
public class newsedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newsedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id"); 
		 DBHelper Dal=new DBHelper();
		 
		 String strSql=" select * from aanews where id=? "; //只查询对应id的数据
		 List<Object> params = new ArrayList<Object>();
		 params.add(id);
		 
		 Map<String, Object> objbyid=Dal.getSingleObject(strSql, params);//执行查询
		 request.setAttribute("objbyid", objbyid);//把查询的结果返回给前端usersedit.jsp页面
		 request.getRequestDispatcher("/admin/newsedit.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");  
		 String id=request.getParameter("id");
		 String title=request.getParameter("title");
		 String author=request.getParameter("author");
		 String createtime=request.getParameter("createtime");
		 String contents=request.getParameter("contents");
		 String source=request.getParameter("source");
		 String typeid=request.getParameter("typeid");
		 
		 
		 DBHelper Dal=new DBHelper();
		 String strSql=" update aanews set title=?,author=?,createtime=?,contents=?,source=?,typeid=? where id=? "; 
		 List<Object> params = new ArrayList<Object>();
		 
		 params.add(title);
		 params.add(author);		 
		 params.add(createtime);
		 params.add(contents);
		 params.add(source);
		 params.add(typeid);
		 params.add(id);
		 
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>保存成功,3秒之后发生跳转!</font>");
		 response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/newslist?id="+id);

	}

}
