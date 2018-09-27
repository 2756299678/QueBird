<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>雀谷博文</title>
        <script type="text/javascript" src="../static/bootstrap-3.3.7-dist/js/bootstrap.js" ></script>
		<link rel="stylesheet" href="../static/bootstrap-3.3.7-dist/css/bootstrap.css" />
		<link rel="stylesheet" href="../static/bootstrap-3.3.7-dist/css/addbootstrap.css" />
		<script type="text/javascript" src="../static/js/jquery-1.12.1.js" ></script>
    	<style type="text/css">
    		.back{
    			background-color: #87FA38;
    		}
    	</style>
    </head>
    <body>
    	<div class="container">
	        <div class="col-md-12">   		
					<img class="img-responsive" src="../img/head.png"> 
			</div>
			<div class="col-md-12">
				<nav class="navbar navbar-inverse">
				  <div class="container-fluid">
				    <!-- Brand and toggle get grouped for better mobile display -->
				    <div class="navbar-header">
				    	<a class="navbar-brand" href="#"><font color="#87FA38" size="5">雀谷社区</font></a>
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				    </div>
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li><a href="#">&nbsp;&nbsp;发帖 <span class="sr-only">(current)</span></a></li>
				        <li><a href="#">&nbsp;&nbsp;写博</a></li>
				        
				      </ul>
				      <form class="navbar-form navbar-right">
				        <div class="form-group">
				          <input type="text" class="form-control" placeholder="Search">
				        </div>
				        <button type="submit" class="btn btn-default">google</button>
				      </form>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
			<div class="col-md-9">
				<div class="panel panel-black" >
				    <div class="panel-heading" >
					      <div class="" style="margin-top: -10px;margin-bottom: 10px;">
							  <h3>作为一名初学者应该如何学习java?</h4>
						 </div>
						
				    </div>
				    <div class="panel-body">
				       <small><font size="4">自己的笔记本没关机就合上盖子了。结果刚打开就发现摄像头是开着的，顿时惊出了一身冷汗！
				       	我明明记得自己合上盖子前根本没有打开过摄像头啊，难道被黑了？
				       	赶紧检查一下电脑，偶然发现自己电脑被全球最年轻黑客
				       </font></small> 
				    </div>
				     
				</div>
				<hr>
				<div class="col-md-12" style="margin-top: 30px;margin-bottom: 20px;">
				<font size="3">最新评论：</font>
				</div>
				<div class="col-md-12">
					<form role="form">
					  <div class="form-group">
					    <label for="name">发表评论</label>
					    <textarea class="form-control" rows="5"></textarea>
					  </div>
					</form>
				</div>
				<div class="col-md-12" style="margin-bottom: 20px;">
					<div class="col-md-10"></div>
					<div class="col-md-2">
					<button type="button" class="btn  btn-small btn-block btn-black">
					    <span class="glyphicon glyphicon-edit">
					    <font color="#87FA38">发表</font>
					    </span>
					</button>
					</div>
				</div>
				<ul class="list-group col-md-12">
				    <li class="list-group-item">
					    <div class="panel-body" style="margin-bottom: -20px;">
					      	<div class="page-header" style="margin-top: -10px;">
							    <h4>随风的叶子：
							    </h4>
							</div>
							<p>这是一个评论，这是一个评论，这是一个评论，</p>
					    </div>
					</li>
					<li class="list-group-item">
					     <div class="panel-body" style="margin-bottom: -20px;">
					      	<div class="page-header" style="margin-top: -10px;">
							    <h4>随风的叶子：
							    </h4>
							</div>
							<p>这是一个评论，这是一个评论，这是一个评论，这是一个示例文本。</p>
					    </div>
					</li>
					<li class="list-group-item">
					     <div class="panel-body" style="margin-bottom: -20px;">
					      	<div class="page-header" style="margin-top: -10px;">
							    <h4>随风的叶子：
							    </h4>
							</div>
							<p>这是一个评论，这是一个评论，这是一个评论，这是一个示例文本。</p>
					    </div>
					</li>
				</ul>
				<div class="col-md-12" style="margin-top: 50px;margin-bottom: 20px;">
				<hr>
				</div>
			</div >
			<div class="col-md-3">
				<div class="panel panel-default">
				    <div class="panel-body">
				       <table  class="table table-bordered" >
				       <div class="col-md-12" align="center">
				       		<img src="../img/head.png" class="img-circle" width="70px" height="70px">
				       </div>
				       <div class="col-md-12" style="margin-top: 20px;">
					       <div class="col-md-12" align="center">
					                        随风的叶子
					       </div>
					       <div class="col-md-12" style="margin-top: 20px;">
					       	   <button type="button" class="btn  btn-lg btn-block btn-black">
							        <span class="glyphicon glyphicon-plus"><font color="#87FA38">&nbsp;&nbsp;关注&nbsp;&nbsp;</font></span>
							    </button>
				      	   </div>
				       </div>
				       
				       </table>
				       <hr>
				       <table  class="table table-bordered" >
				       <tr>
					       <td>原创</td>
					       <td>关注</td>
					       <td>被关注</td>
				       </tr>
				       <tr>
					       <td>5</td>
					       <td>10</td>
					       <td>25</td>
				       </tr>
				       </table>
				    </div>
				</div>
				<div class="panel panel-default">
					<a href="#" class="list-group-item active1">
					    <font color="#87FA38">他的最新文章
					</a>
					<a href="#" class="list-group-item">24*7 支持</a>
					<a href="#" class="list-group-item">免费 Window 空间托管</a>
					<a href="#" class="list-group-item">图像的数量</a>
					<a href="#" class="list-group-item">每年更新成本</a>
				</div>
			</div>
		</div>
 	</body>
</html>