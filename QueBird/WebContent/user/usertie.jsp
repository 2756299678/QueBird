<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>雀谷发帖</title>
        <script type="text/javascript" src="../static/bootstrap-3.3.7-dist/js/bootstrap.js" ></script>
		<link rel="stylesheet" href="../static/bootstrap-3.3.7-dist/css/bootstrap.css" />
		<link rel="stylesheet" href="../static/bootstrap-3.3.7-dist/css/addbootstrap.css" />
		<script type="text/javascript" src="../static/js/jquery-1.12.1.js" ></script>
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
				        <span class="sr-only">雀谷发帖</span>
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
			<!--话题-->
			<div class="col-md-12">
				<div class="page-header">
				    <h2> &nbsp;&nbsp;作为一名初学者应该如何学习java?</h2>
				</div>
			</div>
			<!--内容-->
			<div class="col-md-12">
				
				<div class="col-md-9" style="margin-top: 20px;" >
					<table class="table col-md-12"  border="1" bordercolor="#CCCCCC">
			    		<tr height="300px">
			    			<td width="25%">
			    				<div class="container-fluid" >
			    					<img src="../img/louzhu.png" width="100%" align="right" >
			    				</div>
			    				<div class="col-md-12" align="left" style="margin-top: 10px;" >
					        		<img src="../img/touxiang.jpg" class="img-thumbnail" width="100px" height="100px">
					        	</div>
					        	<div class="col-md-12" align="left" style="margin-top: 10px;">
					        		<h4>随风的叶子</h4>
					        	</div>
			    			</td>
			    			<td width="75%">
			    				<div class="col-md-12" style="margin-top: 30px; height: 250px;">
			    				楼主言论
			    				</div>	
			    				<div class="col-md-12" align="right" style="margin-top: 20px;">
			    					<a href="#"><span class="glyphicon glyphicon-resize-small glyphicon-pencil">回复</a>
			    						&nbsp;&nbsp;|&nbsp;&nbsp;时间：2017-11-9 20：03
			    				</div>
			    			</td>
			    		</tr>
			    		<tr height="300px">
			    			<td width="25%">
			    				<div class="col-md-12" align="left" style="margin-top: 10px;" >
					        		<img src="../img/touxiang.jpg" class="img-thumbnail" width="100px" height="100px">
					        	</div>
					        	<div class="col-md-12" align="left" style="margin-top: 10px;">
					        		<h4>随风的叶子</h4>
					        	</div>
					        	
			    			</td>
			    			<td width="75%">
			    				<div class="col-md-12" style="margin-top: 30px; height: 250px;">
			    				楼主言论
			    				</div>	
			    				<div class="col-md-12" align="right" style="margin-top: 20px;">
			    					<a href="#"><span class="glyphicon glyphicon-resize-small glyphicon-pencil">回复</a>
			    						&nbsp;&nbsp;|&nbsp;&nbsp;时间：2017-11-9 20：03
			    				</div>
			    			</td>
			    		</tr>
			    		<tr height="300px">
			    			<td width="25%">
			    				<div class="col-md-12" align="left" style="margin-top: 10px;" >
					        		<img src="../img/touxiang.jpg" class="img-thumbnail" width="100px" height="100px">
					        	</div>
					        	<div class="col-md-12" align="left" style="margin-top: 10px;">
					        		<h4>随风的叶子</h4>
					        	</div>
					        	
			    			</td>
			    			<td width="75%">
			    				<div class="col-md-12" style="margin-top: 30px; height: 250px;">
			    				楼主言论
			    				</div>	
			    				<div class="col-md-12" align="right" style="margin-top: 20px;">
			    					<a href="#"><span class="glyphicon glyphicon-resize-small glyphicon-pencil">回复</a>
			    						&nbsp;&nbsp;|&nbsp;&nbsp;时间：2017-11-9 20：03
			    				</div>
			    			</td>
			    		</tr>
			    	</table>
			    	<div class="col-md-12" align="center ">
				    	<ul class="pagination  pagination-lg">
						    <li><a href="#">&laquo;</a></li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li><a href="#">&raquo;</a></li>
						</ul>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="panel panel-default">
					    <div class="panel-body">
				        	<button type="button" class="btn  btn-small btn-block btn-black">
							    <span class="glyphicon glyphicon-edit">
							    <font color="#87FA38">&nbsp;&nbsp;回复&nbsp;&nbsp;</font>
							    </span>
							</button>
					    </div>
					</div>
					<div class="panel panel-default">
					<a href="#" class="list-group-item active1">
					    <font color="#87FA38">话题推荐
					</a>
					<a href="#" class="list-group-item">24*7 支持</a>
					<a href="#" class="list-group-item">免费 Window 空间托管</a>
					<a href="#" class="list-group-item">图像的数量</a>
					<a href="#" class="list-group-item">每年更新成本</a>
				</div>
				</div>
			</div>
    	</div>
    	<hr>
    	<div class="container">
	    	<div class="col-md-12">
				<form role="form">
				  <div class="form-group">
				    <label for="name"><font color="#000000">进行回帖</label>
				    <textarea class="form-control" rows="5"></textarea>
				  </div>
				</form>
			</div>
			<div class="col-md-12" style="margin-bottom: 20px;">
				<div class="col-md-10"></div>
				<div class="col-md-2">
				<button type="button" class="btn  btn-small btn-block btn-black">
				    <span class="glyphicon glyphicon-edit">
				    <font color="#87FA38">回复</font>
				    </span>
				</button>
				</div>
			</div>
		</div>
 	</body>
</html>