package Servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.ArticleBean;
import Bean.PagingBean;
import Bean.TopicBean;
import Dao.ArticleDao;
import Dao.TopicDao;
import Utils.Constants;
import Utils.StringUtil;

public class ArticleServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req,HttpServletResponse resp)throws
	ServletException,IOException{
		req.setCharacterEncoding("UTF-8");
		String method=req.getParameter("method");
		if("add".equals(method))
		{
			add(req,resp);
		}
		else if("search".equals(method))
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
		
	}
	
	private void lists(HttpServletRequest req, HttpServletResponse resp) 
	throws IOException,ServletException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		//List<TopicBean> list=new ArrayList<TopicBean>();
		ArticleDao topicDao=new ArticleDao();
		int currentPage=StringUtil.StringToInt(req.getParameter("currentPage"));
		int countSize=topicDao.getCount();
		//Constants.PAGE_SIZE_1: 该常量表示：	一页多少条数据,这里size1为一页一条数据
		PagingBean pagingBean=new PagingBean(currentPage,countSize,Constants.PAGE_SIZE_5);
		List<ArticleBean> topicBeans=topicDao.getListByPage(currentPage * 
				Constants.PAGE_SIZE_5,Constants.PAGE_SIZE_5);
		pagingBean.setPrefixUrl(req.getContextPath()+"/articleServlet?method=list");
		pagingBean.setAnd(true);
		req.setAttribute("articleBeans", topicBeans); 
		req.setAttribute("pagingBean2", pagingBean);
		
		
		//list=topicDao.getList();
		//req.setAttribute("topicBeans", list);
		//req.getRequestDispatcher("index.jsp").forward(req,resp);
		
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		List<ArticleBean> list=new ArrayList<ArticleBean>();
		//ArticleDao topicDao=new ArticleDao();
		list=topicDao.getReadList();
		req.setAttribute("newArticleBeans", list);
		req.getRequestDispatcher("Article.jsp").forward(req,resp);
	}

	//发布话题算法
	private void add(HttpServletRequest req, HttpServletResponse resp)
	throws IOException,ServletException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		ArticleBean articleBean = new ArticleBean();
		
		String title=req.getParameter("title");
		String content=req.getParameter("intro");
		String detail=req.getParameter("information");
		//此处需要修改
		int userid=StringUtil.StringToInt(req.getParameter("1"));
		//现在时间
		SimpleDateFormat createDate = new SimpleDateFormat("yyyy-MM-dd");
		articleBean.setTitle(title);
		articleBean.setContent(content);
		articleBean.setDetail(detail);
		articleBean.setDatetime(createDate.format(new Date()));
		articleBean.setUserid(userid);
		
		ArticleDao articleDao = new ArticleDao();
		
		if(articleDao.add(articleBean))
		{
			
			resp.sendRedirect(req.getContextPath()+"/user/addbowen.jsp?status=0");
		}
		else
		{
			resp.sendRedirect(req.getContextPath()+"/user/addbowen.jsp?status=1");
		}
	}

	///寻找界面未添加
		private void search(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException,IOException{
			// TODO Auto-generated method stub
			String chars=req.getParameter("key");
			ArticleDao articalDao=new ArticleDao();
			List<ArticleBean> topicBeans=new ArrayList<>();
			topicBeans=articalDao.getLists(chars);
			req.setAttribute("articleBeans", topicBeans);
			if(topicBeans.size()>0){
				try
				{
					req.getRequestDispatcher("Article.jsp").forward(req, resp);
				}catch(ServletException | IOException e){
					e.printStackTrace();
				}
			}
			else
			{
				try{
					req.getRequestDispatcher("Article.jsp?status=1").forward(req, resp);
				}catch(Exception e)
				{
					e.printStackTrace();
				}
			}
		}

		//显示博文详情
		private void details(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
			int id=StringUtil.StringToInt(req.getParameter("id"));
			ArticleDao topicDao=new ArticleDao();
			ArticleBean topicBean=topicDao.getById(id);
			req.setAttribute("topicBean", topicBean);
			try
			{
				req.getRequestDispatcher("topicInfo.jsp").forward(req, resp);
			}catch(ServletException |IOException e){
				e.printStackTrace();
			}
		}
		
		//显示话题列表（点击话题界面）
		private void list(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
			req.setCharacterEncoding("utf-8");
			//List<TopicBean> list=new ArrayList<TopicBean>();
			ArticleDao topicDao=new ArticleDao();
			int currentPage=StringUtil.StringToInt(req.getParameter("currentPage"));
			int countSize=topicDao.getCount();
			//Constants.PAGE_SIZE_1: 该常量表示：	一页多少条数据,这里size1为一页一条数据
			PagingBean pagingBean=new PagingBean(currentPage,countSize,Constants.PAGE_SIZE_5);
			List<ArticleBean> topicBeans=topicDao.getListByPage(currentPage * 
					Constants.PAGE_SIZE_5,Constants.PAGE_SIZE_5);
			pagingBean.setPrefixUrl(req.getContextPath()+"/topicServlet?method=list");
			pagingBean.setAnd(true);
			req.setAttribute("topicBeans", topicBeans); 
			req.setAttribute("pagingBean", pagingBean);
			
			
			//list=topicDao.getList();
			//req.setAttribute("topicBeans", list);
			req.getRequestDispatcher("Article.jsp").forward(req,resp);
		}
		
		//阅读排行榜
		private void readList(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException,IOException{
			// TODO Auto-generated method stub
			req.setCharacterEncoding("utf-8");
			List<ArticleBean> list=new ArrayList<ArticleBean>();
			ArticleDao topicDao=new ArticleDao();
			list=topicDao.getReadList();
			req.setAttribute("newTopicBeans", list);
			req.getRequestDispatcher("Article.jsp").forward(req,resp);
		}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
