var User = {};
var frmName = "userForm";

(function() {
	User.save = function(user) {
		var st_user = Global.serializeForm(user);
		console.log(st_user);
		Global.post(ctx + "/api/user/save", st_user)
	};

	User.list = function() {
		$("#tblUsers tbody").empty();
		$.getJSON(ctx + "/api/user/list", function(json) {
			Global.loadtable($("#tblUsers tbody"), json);
		});
	};
})();

$(function() {
	$("#" + frmName).submit(function(event) {
		event.preventDefault();
		var obj_user = form2object(frmName, ".", true);
		User.save(obj_user);
		User.list();
		return false;
	});
});
