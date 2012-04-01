class app.views.statItem extends Support.CompositeView
	className: "stat span5"

	events:
		"click a.delete":"delete"
		"click a.star":"toggleStarred"

	initialize:->
		_.bindAll(@,"render")
		@model.bind("change", @render)

	render:->
		starred = @model.attributes.starred
		console.log starred
		if @model.attributes.starred is true
			starUrl = 'assets/icons/star_d.png'
		else
			starUrl = 'assets/icons/star.png'

		$(@el).html JST['templates/stats/stat']
			stat:@model
			star:starUrl
		return @

	toggleStarred:()->
		stat = @model
		starred = stat.attributes.starred
		
		if starred is true
			stat.set 
				"starred":false
		else
			stat.set 
				"starred":true

		stat.save()

	delete:(e)->
		e.preventDefault()
		@model.destroy()

