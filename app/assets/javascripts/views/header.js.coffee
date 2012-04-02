class app.views.header extends Support.CompositeView
	className: "stats-header span8"

	initialize:->
		@$ = $(@el)

	render:->
		@$.html JST['templates/header']
		return @

