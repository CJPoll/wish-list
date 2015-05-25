Polymer('delete-wish', {
	ready: function() {
		id = this.wish.id;
		this.path = "/gift_ideas/" + id;
	},
	buttonClick: function(event, detail, sender) {
		$.ajax({
			type: "POST",
			url: this.path,
			dataType: "json",
			data: {"_method": "delete"},
			complete: function() {
				window.location.href = "/gift_ideas";
			}
		});
	}
});
