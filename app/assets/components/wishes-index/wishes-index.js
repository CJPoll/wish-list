Polymer( 'wishes-index', {
	url: "/wishes",
	ready: function() {

		_this = this;

		$.ajax( this.url ).then( function( wishes ) {
			_this.wishes = wishes;
			_this.wishes.forEach(function(wish) {
				if (! wish.url.match(/http:\/\//)) {
					wish.url = "http://" + wish.url;
				}
			});
		});
	}
});
