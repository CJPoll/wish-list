var DeleteWish = React.createClass({
	propTypes: {
		wish: React.PropTypes.object.isRequired
	},

	onClick() {
		var id, path;

		id = this.props.wish.id;
		path = 'wishes/' + id;

		$.ajax({
			type: 'POST',
			url: path,
			dataType: 'json',
			data: { _method: 'delete' },
			complete: function() {
				window.location.href = '/wishes';
			}
		});
	},

	render: function() {
		var wish = this.props.wish
		return (
			<a className="danger-button" onClick={this.onClick}>Delete</a>
		);
	}
});
