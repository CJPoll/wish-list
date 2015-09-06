var WishTable = React.createClass({
	propTypes: {
		wishes: React.PropTypes.array.isRequired
	},

	renderWishes() {
		var wishes, wishData;

		wishes = this.props.wishes;
		wishData = _.map( wishes, function( wish ) {
			return (
				<tr key={'wish' + wish.id}>
					<td>
						<a href={ wish.url } className='primary-button' target='_blank'>
							{ wish.name }
						</a>
					</td>
					<td>
						{ wish.description }
					</td>
					<td>
						<EditWish wish={ wish }/>
					</td>
					<td>
						<DeleteWish wish={ wish }/>
					</td>
				</tr>
			)
		});

		return wishData;
	},

	render: function() {
		return (
			<table className="table">
				<tr>
					<th className='wish-name-column'>
						Name
					</th>
					<th className='wish-description-column'>
						Description
					</th>
					<th className="wish-edit-button-column">
					</th>
					<th className="wish-delete-button-column">
					</th>
				</tr>
				{ this.renderWishes() }
			</table>
		);
	}
});
