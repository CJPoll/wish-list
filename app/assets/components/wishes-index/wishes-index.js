Polymer( 'wishes-index', {
	ready: function() {
		json_wish_index_path = '/gift_ideas.json';

		_this = this;

		$.ajax( json_wish_index_path ).then( function( wishes ) {
			_this.wishes = wishes;
			_this.wishes.forEach(function(wish) {
				if (! wish.url.match(/http:\/\//)) {
					wish.url = "http://" + wish.url
				}
			})
		});
	}
});
