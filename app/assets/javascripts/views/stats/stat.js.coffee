class app.views.statItem extends Support.CompositeView
	className: "stat span5"

	events:
		"click a.delete":"delete"

	initialize:->

	render:->
		$(@el).html JST['templates/stats/stat']
			stat:@model
		return @

	delete:(e)->
		e.preventDefault()
		@model.destroy()

