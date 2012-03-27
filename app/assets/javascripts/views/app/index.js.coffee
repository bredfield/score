class app.views.appIndex extends Support.CompositeView
	id:"content"
	className: "container"

	render:->
		$(@el).html JST['templates/app/index']
		@sidebar()
		@main()
		return @

	sidebar:->
		sidebar = new app.views.sidebar()
		$(@el).children(0).html sidebar.render().el
		return @

	main:->
		main = new app.views.main()
		$(@el).children(0).append main.render().el
		return @
		
