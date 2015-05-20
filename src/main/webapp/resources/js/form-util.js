var Global = {};

(function () {
	/* To improve supporting arrays, etc.*/
	Global.serializeForm = function (frm) {
		return JSON.stringify(frm.serializeArray());
	};
	
	Global.loadForm(url)
	{
		$.getJSON(url, function(data) {
			for (var i in data) {
				$('input[name="'+i+'"]').val(data[i]);
			}
		});
	}
})();