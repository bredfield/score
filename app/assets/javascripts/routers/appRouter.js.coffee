class app.routers.appRouter extends Support.SwappingRouter
	initialize:->

		sidebar = new app.views.sidebar()
		app.el.html sidebar.render().el
	
		app.el.append "<div id='content' />"

		@el = app.el.find('#content')


	routes:
		"":"stats"
		"category":"stats"
		"category/:id":"stats"


	stats:(id)->
		window.location.hash = "category/all" if !id
		
		if id is "all"
			console.log "yaa"

		statsIndex = new app.views.statsIndex()
		@swap(statsIndex)




