<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://localhost:8080/QueBird/util" prefix="util"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<script type="text/javascript"
	src="static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<link rel="stylesheet"
	href="static/bootstrap-3.3.7-dist/css/bootstrap.css" />
<link rel="stylesheet"
	href="static/bootstrap-3.3.7-dist/css/addbootstrap.css" />
<script type="text/javascript" src="static/js/jquery-1.12.1.js"></script>
<style type="text/css">
a:link {
	color: #87FA38;
	text-decoration: none;
}

a:visited {
	color: #87FA38;
	text-decoration: none;
}

a:hover {
	color: #87FA38;
	text-decoration: none;
}

a:active {
	color: #87FA38;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container">
		<div class="col-md-12">
			<img class="img-responsive" src="img/head.png">
		</div>
		<div class="col-md-12">
			<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="#"><font color="#87FA38" size="5">雀谷社区</font></a>
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a
							href="${pageContext.request.contextPath}/topicServlet?method=lists">&nbsp;&nbsp;话题
								<span class="sr-only">(current)</span>
						</a></li>
						<li><a
							href="${pageContext.request.contextPath}/topicServlet?method=readList">&nbsp;&nbsp;博文</a></li>

					</ul>
					<form class="navbar-form navbar-right">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">google</button>
					</form>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
		</div>
		<div class="col-md-8">
			<div class="col-md-12">
				<form class="form col-md-12" role="search"
					action="${pageContext.request.contextPath}/topicServlet?method=search"
					method="post">
					<div class="form-group form-group-lg col-md-8">
						<input type="text" name="key" class="form-control"
							placeholder="Search">
					</div>
					<div class="form-group form-group-lg col-md-4">
						<button type="submit" class="btn btn-black btn-lg">
							<span class="glyphicon glyphicon-search"><font
								color="#87FA38">&nbsp;&nbsp;搜索话题&nbsp;&nbsp;</font></span>
						</button>
					</div>
				</form>
			</div>
			<div class="col-md-12">
				<c:forEach items="${topicBeans}" var="item" varStatus="status">
					<!--面板-->
					<div class="panel panel-black">
						<div class="panel-heading">
							<div class="" style="margin-top: -10px; margin-bottom: 40px;">
								<h3>
									<span class="badge">${item.id}</span> <a href="topicServlet?method=details&id=${item.id }">${ item.title}</a>
									</h4>
									<div class="col-md-12">
										<small>发布人：${item.userBean.nickname }</small>
									</div>
							</div>

						</div>
						<div class="panel-body">
							<small><font size="4">${item.content }</font></small> <span
								class="glyphicon glyphicon-menu-right"></span>

						</div>
						<div class="panel-footer panel-black">
							<button type="button" class="btn btn-link btn-lg">
								<span class="glyphicon glyphicon-heart"></span>点赞
							</button>
							<button type="button" class="btn btn-link btn-lg">
								<span class="glyphicon glyphicon-star"></span>收藏
							</button>
							<button type="button" class="btn btn-link btn-lg">
								<span class="glyphicon glyphicon-comment"></span>评论
							</button>
							<button type="button" class="btn btn-link btn-lg">
								<span class="glyphicon glyphicon glyphicon-flag"></span>举报
							</button>

							<div align="right" style="margin-top: -25px;">
								<small>发布时间：${item.datetime }</small>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- <div class="col-md-12" align="center">
				<ul class="pagination  pagination-lg">
					<li><a href="#">&laquo;</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div> -->
			<div class="row-fluid">
				<div class="col-md-3"></div>
				<div class="col-md-12" align="center">
					<div>
						<util:page pagingBean="${pagingBean}" />
					</div>
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-default ">
				<div class="panel-body ">
					<button type="button" class="btn  btn-lg btn-block btn-black">
						<span class="glyphicon glyphicon-edit"><font
							color="#87FA38">&nbsp;&nbsp;发布话题&nbsp;&nbsp;</font></span>
					</button>
				</div>
				<div class="panel-body ">
					<button type="button" class="btn btn-lg btn-block btn-black">
						<span class="glyphicon glyphicon-book"><font
							color="#87FA38">&nbsp;&nbsp;发布博文&nbsp;&nbsp;</font></span>
					</button>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-body">
					<h4>阅读排行榜</h4>
				</div>
				<div class="panel-body">
					<c:forEach items="${newTopicBeans}" var="item" varStatus="status">
						<li>${item.title}</li>
						<!-- <li>程序员的未来在哪里？</li>
					<li>文章被移除后感悟</li>
					<li>记一次前端性能优化的案例</li>
					<li>程序员的未来在哪里？</li>
					<li>文章被移除后感悟</li>
					<li>记一次前端性能优化的案例</li>
					<li>程序员的未来在哪里？</li>
					<li>文章被移除后感悟</li>
					<li>记一次前端性能优化的案例</li> -->
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	${param.status==1?"<div class='alert alert-danger' role='alert'>暂未查询到该话题</div>":"" }

</body>
</html>