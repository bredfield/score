class app.routers.appRouter extends Support.SwappingRouter
	initialize:->

		sidebar = new app.views.sidebar()
		app.el.html sidebar.render().el
	
		app.el.append "<div id='content' />"

		@el = app.el.find('#content')


	routes:
		"":"stats"
		"category/:id":"stats"

	stats:(id)->
		id = 1 if !id
		console.log id
		statsIndex = new app.views.statsIndex()
		@swap(statsIndex)


