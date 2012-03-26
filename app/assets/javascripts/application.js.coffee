//= require jquery
//= require jquery_ujs
//= require ./require/underscore
//= require ./require/backbone
//= require ./require/backbone.authtokenadapter
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
		@el = $('#app-view')

		@datas = new @collections.datas();
		## BackBone setup ##
		# @datas = new @collections.datas(json)

		# @appRouter = new @routers.appRouter()
		# Backbone.history.start()

app = window.app
