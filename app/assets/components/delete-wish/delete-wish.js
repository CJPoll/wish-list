Polymer('delete-wish', {
	ready: function() {
		id = this.wish.id;
		this.path = "/wishes/" + id;
	},
	buttonClick: function(event, detail, sender) {
		$.ajax({
			type: "POST",
			url: this.path,
			dataType: "json",
			data: {"_method": "delete"},
			complete: function() {
				window.location.href = "/wishes";
			}
		});
	}
});
