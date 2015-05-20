<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>


<t:master title="User page">
	<jsp:attribute name="footer">
		<script src="${ctx}/resources/js/pages/user.js"></script>
	</jsp:attribute>
	<jsp:body>
		<form id="userForm" class="form-horizontal">
		  <div class="form-group">
			<label for="name" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
			  <input type="text" class="form-control" name="username"
						placeholder="Name">
			</div>
		  </div>		
		  <div class="form-group">
			<label for="email" class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
			  <input type="email" class="form-control" name="email"
						placeholder="Email">
			</div>
		  </div>
		  <div class="form-group">
			<label for="pass" class="col-sm-2 control-label">Password</label>
			<div class="col-sm-10">
			  <input type="password" class="form-control" name="password"
						placeholder="Password">
			</div>
		  </div>

		  <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <button type="submit" class="btn btn-default">Create</button>
			</div>
		  </div>
		</form>
	
			<table id="tblUsers" class="table table-bordered table-condensed">
		  	<thead>
				<tr class="enc-tabla">
					<th>Id</th>
					<th>Name</th>	
					<th>Pass</th>		
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		
	</jsp:body>
</t:master>


