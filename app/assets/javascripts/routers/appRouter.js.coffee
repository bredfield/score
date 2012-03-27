class app.routers.appRouter extends Support.SwappingRouter
	initialize:->

	routes:
		"":"app"


	app:->
		appIndex = new app.views.appIndex
		app.el.html appIndex.render().el
