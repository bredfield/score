class app.routers.appRouter extends Support.SwappingRouter
	initialize:->

		sidebar = new app.views.sidebar()
		app.el.html sidebar.render().el
	
		statsIndex = new app.views.statsIndex()
		app.el.append statsIndex.render().el

		@el = app.el.find('#stats')


	routes:
		"":"all"

	all:->
		stat = new app.views.statItem()
		console.log stat.render().el
		@swap(stat)


