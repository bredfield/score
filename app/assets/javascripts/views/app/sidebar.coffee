class app.views.sidebar extends Support.CompositeView
	className: "sidebar span2"

	initialize:->

	render:->
		$(@el).html JST['templates/app/sidebar']
		return @


