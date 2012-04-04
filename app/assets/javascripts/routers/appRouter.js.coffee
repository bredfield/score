class app.routers.appRouter extends Support.SwappingRouter
	initialize:->

		sidebar = new app.views.sidebar()
		app.el.html sidebar.render().el
	
		app.el.append "<div id='content' />"

		@el = app.el.find('#content')

		header = new app.views.header()
		app.el.append header.render().el



	routes:
		"":"statsIndex"
		"category":"statsIndex"
		"category/:id":"statsIndex"
		"stat":"statDetail"
		"stat/:id":"statDetail"


	statsIndex:(id)->
		window.location.hash = "category/all" if !id

		statsIndex = new app.views.statsIndex
			collection:app.stats
			category:id

		@swap(statsIndex)

	statDetail:(id)->
		# window.location.hash = "category/all" if !id

		detailIndex = new app.views.detailIndex
			collection:app.stats
			category:id

		@swap(detailIndex)






