class app.views.statsIndex extends Support.CompositeView
	id:"stats"
	className: "row"

	render:->
		@stats()

		return @

	stats:=>
		for i in [1..10]
			stat = new app.views.statItem()
			$(@el).append stat.render().el
