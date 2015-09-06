var EditWish = React.createClass({
	propTypes: {
		wish: React.PropTypes.object.isRequired
	},

	render: function() {
		var href = '/wishes/' + this.props.wish.id + '/edit'
		return (
			<a href={href} className='information-button'>
				Edit
			</a>
		);
	}
});
