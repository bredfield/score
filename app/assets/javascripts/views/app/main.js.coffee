class app.views.main extends Support.CompositeView
	className: "main span10 offset2"

	initialize:->

	render:->
		$(@el).html JST['templates/app/main']
		return @

