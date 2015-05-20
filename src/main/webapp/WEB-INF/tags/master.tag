
<%@tag description="Master" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@attribute name="header" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<%@attribute name="title" required="false"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="session" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="${ctx}/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${ctx}/css/datepicker.css" rel="stylesheet">
<link href="${ctx}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="${ctx}/css/custom.css" rel="stylesheet">

<jsp:invoke fragment="header" />
<title>Template Bootstrap</title>
</head>
<body>
	<!-- Header -->
	<img id="header" src="${ctx}/images/header.jpg" />

	<div class="container-fluid">
		<div class="row-fluid">
			<div id="main-frame" class="span10">
				<jsp:doBody />
				<div id="messages" class="alert alert-danger" style="display: none;">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<div></div>
				</div>
			</div>
		</div>
	</div>

	<!—[if lt IE 9]>
	<script src="${ctx}/js/html5.js"></script>
	<![endif]—>

	<script src="${ctx}/js/jquery-1.11.1.min.js"></script>
	<script src="${ctx}/js/jquery_serializejson.js"></script>
	<script src="${ctx}/js/form-util.js"></script>
	<script src="${ctx}/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		var ctx = "${ctx}";
	</script>
	<jsp:invoke fragment="footer" />
</body>
</html>
