class app.views.detailIndex extends Support.CompositeView
	id:"stats"
	className: "row"

	render:->
		$(@el).html("<div class='spacer' /> whatup")
		return @