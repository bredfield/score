class app.routers.appRouter extends Support.SwappingRouter
	initialize:->
		appIndex = new app.views.appIndex
		app.el.html appIndex.render().el

	routes:
		"":"app"


	app:->
		
