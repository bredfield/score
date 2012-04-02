class app.views.header extends Support.CompositeView
	className: "header span8"

	initialize:->
		@$ = $(@el)

	render:->
		@$.html JST['templates/header']
		return @

