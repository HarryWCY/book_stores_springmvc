<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.css" />
<title>更新用户信息</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/top/top.jsp" %>

	<div class="container">
		<div id="update" class="col-md-offset-2 col-md-8">
			<fieldset>
				<legend> 修改用户信息入口
					<a href="${pageContext.request.contextPath}/adminLogin?userName=${loginUser.userName}&password=${loginUser.password}" style="padding-left: 200px;">返回上一级</a>
				</legend>
				<form action="${pageContext.request.contextPath}/updateUser?id=${update_user.id}" method="post" class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-4">
							<input readonly="readonly" type="text" value="${update_user.userName }"
								name="userName" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">密码</label>
						<div class="col-sm-4">
							<input type="text" value="${update_user.password }" name="password"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">真实姓名</label>
						<div class="col-sm-4">
							<input type="text" value="${update_user.realName }" name="realName"
								class="form-control">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">性别</label>
						<div class="col-sm-4">
							<select class="form-control" name="gender">
								<c:if test="${update_user.gender=='M' }">
										<option value="M">男</option>
										<option value="W">女</option>
								</c:if>
								<c:if test="${update_user.gender=='W' }">
									<option value="W">女</option>
									<option value="M">男</option>
								</c:if>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">手机号</label>
						<div class="col-sm-4">
							<input type="text" value="${update_user.phone }" name="phone"
								class="form-control">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">邮箱地址</label>
						<div class="col-sm-4">
							<input type="text" value="${update_user.email }" name="email"
								class="form-control">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">公司地址</label>
						<div class="col-sm-4">
							<input type="text" value="${update_user.company }" name="company"
								class="form-control">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">用户权限</label>
						<div class="col-sm-4">
							<select class="form-control" name="state">
								<c:if test="${update_user.state==0}">
									<option value="0">普通会员</option>
									<option value="1">管理员</option>
								</c:if>
								<c:if test="${update_user.state==1}">
									<option value="1">管理员</option>
									<option value="0">普通会员</option>
								</c:if>
							</select>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default btn-info">确认</button>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="reset" class="btn btn-default btn-warning">重置</button>
						</div>
					</div>
				</form>
			</fieldset>
		</div>
	</div>


	<jsp:include page="/WEB-INF/jsp/top/bottom.jsp"></jsp:include>


	<script src="${pageContext.request.contextPath}/dist/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/carousel.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/dist/js/bootstrap.min.js"></script>

</body>
</html>