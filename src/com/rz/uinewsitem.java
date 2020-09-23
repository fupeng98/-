package com.rz;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class uinewsitem
 */
@WebServlet("/uinewsitem")
public class uinewsitem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uinewsitem() {
        super();
        // TODO Auto-generated constructor stub
      
    }
    public List<Map<String, Object>> GetNewsListByTypeId(String typeid)
	{
		List<Map<String, Object>> newslistall = null;
		List<Object> params = new ArrayList<Object>();
		DBHelper Dal=new DBHelper();
		String strSqlpager=" select  * from aanews where typeid='"+typeid+"' order by id desc limit 0,7 "; 
		try {
			newslistall=Dal.executeQuery(strSqlpager, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newslistall;
	}



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Map<String, Object>> item1=GetNewsListByTypeId("1");
		List<Map<String, Object>> item2=GetNewsListByTypeId("2");
		List<Map<String, Object>> item3=GetNewsListByTypeId("3");
		List<Map<String, Object>> item4=GetNewsListByTypeId("4");
		List<Map<String, Object>> item5=GetNewsListByTypeId("5");
		List<Map<String, Object>> item6=GetNewsListByTypeId("6");
		request.setAttribute("item1", item1);
		request.setAttribute("item2", item2);
		request.setAttribute("item3", item3);
		request.setAttribute("item4", item4);
		request.setAttribute("item5", item5);
		request.setAttribute("item6", item6);
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
