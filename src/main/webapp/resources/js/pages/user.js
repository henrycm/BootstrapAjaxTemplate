var User = {};

(function () {
	User.save = function () {
		var st_user = Global.serializeForm($("user"));
		alert(st_user);
	};
})();