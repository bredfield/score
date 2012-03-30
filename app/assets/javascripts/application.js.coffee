//= require jquery
//= require jquery_ujs
//= require ./require/underscore
//= require ./require/backbone
//= require ./require/backbone.authtokenadapter
//= require ./require/backbone-query.min
//= require backbone-support

//= require_self

//= require_tree ./models
//= require_tree ./collections
//= require_tree ./views
//= require_tree ./routers
//= require_tree ./templates
//= require_tree .


window.app = 
	models:{}
	collections:{}
	views:{}
	routers:{}
	init:(json)->
		## UI ##
		@el = $('#app')
		## BackBone setup ##
		@stats = new @collections.stats(json.stats)

		@categories = new @collections.categories(json.categories)

		@appRouter = new @routers.appRouter()
		Backbone.history.start()

app = window.app
