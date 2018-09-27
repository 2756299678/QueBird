package Servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List; 
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import Bean.PagingBean;
import Utils.Constants;
import Bean.TopicBean; 
import Dao.TopicDao; 
import Utils.StringUtil; 

@WebServlet("/TopicServlet")
public class TopicServlet extends HttpServlet{
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req,HttpServletResponse resp) throws IOException,ServletException{
		req.setCharacterEncoding("utf-8");
		String method=req.getParameter("method");
		if("search".equals(method))
		{
			search(req,resp);
		}
		else if("details".equals(method))
		{
			details(req,resp);
		}
		else if("list".equals(method))
		{
			list(req,resp);
		}
		else if("readList".equals(method))
		{
			readList(req,resp);
		}
		else if("lists".equals(method))
		{
			lists(req,resp);
		}
		else if("add".equals(method))
		{
			add(req,resp);
		}
	}
	
	//添加话题
		private void add(HttpServletRequest req, HttpServletResponse resp) throws
		ServletException,IOException{
			// TODO Auto-generated method stub
			req.setCharacterEncoding("UTF-8");
			TopicBean topicBean = new TopicBean();
			
			String title=req.getParameter("title");
			String content=req.getParameter("intro");
			//String detail=req.getParameter("information");
			//此处需要修改
			int userid=StringUtil.StringToInt(req.getParameter("1"));
			//现在时间
			SimpleDateFormat createDate = new SimpleDateFormat("yyyy-MM-dd");
			topicBean.setTitle(title);
			topicBean.setContent(content);
			//articleBean.setDetail(detail);
			topicBean.setDatetime(createDate.format(new Date()));
			topicBean.setUserid(userid);
			
			TopicDao topicDao = new TopicDao();
			
			if(topicDao.add(topicBean))
			{
				
				resp.sendRedirect(req.getContextPath()+"/user/addbowen.jsp?status=0");
			}
			else
			{
				resp.sendRedirect(req.getContextPath()+"/user/addbowen.jsp?status=1");
			}
			
		}

	//topic主页信息
	private void lists(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		//List<TopicBean> list=new ArrayList<TopicBean>();
		TopicDao topicDao=new TopicDao();
		int currentPage=StringUtil.StringToInt(req.getParameter("currentPage"));
		int countSize=topicDao.getCount();
		//Constants.PAGE_SIZE_1: 该常量表示：	一页多少条数据,这里size1为一页一条数据
		PagingBean pagingBean=new PagingBean(currentPage,countSize,Constants.PAGE_SIZE_5);
		List<TopicBean> topicBeans=topicDao.getListByPage(currentPage * 
				Constants.PAGE_SIZE_5,countSize);
		pagingBean.setPrefixUrl(req.getContextPath()+"/topicServlet?method=list");
		pagingBean.setAnd(true);
		req.setAttribute("topicBeans", topicBeans); 
		req.setAttribute("pagingBean", pagingBean);
		
		
		//list=topicDao.getList();
		//req.setAttribute("topicBeans", list);
		//req.getRequestDispatcher("index.jsp").forward(req,resp);
		
		List<TopicBean> list=new ArrayList<TopicBean>();
		//TopicDao topicDao=new TopicDao();
		list=topicDao.getReadList();
		req.setAttribute("newTopicBeans", list);
		req.getRequestDispatcher("topic.jsp").forward(req,resp);
	}



	///寻找界面未添加
	private void search(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException,IOException{
		// TODO Auto-generated method stub
		String chars=req.getParameter("key");
		TopicDao topicDao=new TopicDao();
		List<TopicBean> topicBeans=new ArrayList<>();
		topicBeans=topicDao.getLists(chars);
		req.setAttribute("topicBeans", topicBeans);
		if(topicBeans.size()>0){
			try
			{
				req.getRequestDispatcher("topic.jsp").forward(req, resp);
			}catch(ServletException | IOException e){
				e.printStackTrace();
			}
		}
		else
		{
			try{
				req.getRequestDispatcher("topic.jsp?status=1").forward(req, resp);
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

	//显示话题详情
	private void details(HttpServletRequest req,HttpServletResponse resp)
		throws ServletException,IOException{
		int id=StringUtil.StringToInt(req.getParameter("id"));
		TopicDao topicDao=new TopicDao();
		TopicBean topicBean=topicDao.getById(id);
		req.setAttribute("topicBean", topicBean);
		try
		{
			req.getRequestDispatcher("topic.jsp").forward(req, resp);
		}catch(ServletException |IOException e){
			e.printStackTrace();
		}
	}
	
	//显示话题列表（点击话题界面）
	private void list(HttpServletRequest req,HttpServletResponse resp)
		throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		//List<TopicBean> list=new ArrayList<TopicBean>();
		TopicDao topicDao=new TopicDao();
		int currentPage=StringUtil.StringToInt(req.getParameter("currentPage"));
		int countSize=topicDao.getCount();
		//Constants.PAGE_SIZE_1: 该常量表示：	一页多少条数据,这里size1为一页一条数据
		PagingBean pagingBean=new PagingBean(currentPage,countSize,Constants.PAGE_SIZE_5);
		List<TopicBean> topicBeans=topicDao.getListByPage(currentPage * 
				Constants.PAGE_SIZE_5,countSize);
		pagingBean.setPrefixUrl(req.getContextPath()+"/topicServlet?method=list");
		pagingBean.setAnd(true);
		req.setAttribute("topicBeans", topicBeans); 
		req.setAttribute("pagingBean", pagingBean);
		
		
		//list=topicDao.getList();
		//req.setAttribute("topicBeans", list);
		req.getRequestDispatcher("topic.jsp").forward(req,resp);
	}
	
	//阅读排行榜
	private void readList(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException,IOException{
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		List<TopicBean> list=new ArrayList<TopicBean>();
		TopicDao topicDao=new TopicDao();
		list=topicDao.getReadList();
		req.setAttribute("newTopicBeans", list);
		req.getRequestDispatcher("topic.jsp").forward(req,resp);
	}
	
	
}
