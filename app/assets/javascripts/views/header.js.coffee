class app.views.header extends Support.CompositeView
	className: "stats-header row"

	initialize:->
		@$ = $(@el)

	render:->
		@$.html JST['templates/header']
		return @

