var Global = {};

(function() {
	/* To improve supporting arrays, etc. */
	Global.serializeForm = function(frm) {
		return JSON.stringify(frm)
	};

	Global.loadForm = function(url) {
		$.getJSON(url, function(data) {
			for ( var i in data) {
				$('input[name="' + i + '"]').val(data[i]);
			}
		});
	};

	Global.post = function(url, st_data) {
		$.ajax({
			url : url,
			data : st_data,
			type : "POST",
			beforeSend : function(xhr) {
				xhr.setRequestHeader("Accept", "application/json");
				xhr.setRequestHeader("Content-Type", "application/json");
			},
			success : function(data) {
				console.log(data);
			}
		});
	};

	Global.loadtable = function(table, data) {
		$.each(data, function(rowIndex, r) {
			var row = $("<tr/>");
			$.each(r, function(colIndex, c) {
				row
						.append($("<t" + (rowIndex == 0 ? "h" : "d") + "/>")
								.text(c));
			});
			table.append(row);
		});
	};

})();