class app.views.sidebar extends Support.CompositeView
	className: "sidebar span2"

	initialize:->

	render:->
		@user()
		@categories()
		
		return @

	user:->
		$(@el).append JST['templates/users/user']

	categories:->
		categories = new app.views.categoriesIndex()
		$(@el).append categories.render().el



