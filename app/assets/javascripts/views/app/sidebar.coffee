class app.views.sidebar extends Support.CompositeView
	className: "sidebar span2"

	initialize:->

	render:->
		@user()
		@categories()
		
		return @

	user:->
		user = new app.views.userInfo()
		$(@el).append user.render().el

	categories:->
		categories = new app.views.categoriesIndex()
		$(@el).append categories.render().el
		return @


