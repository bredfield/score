class app.views.statItem extends Support.CompositeView
	className: "stat span4"

	events:
		"click a.delete":"delete"
		"click a.star":"toggleStarred"

	initialize:->
		_.bindAll(@,"render")
		# @model.bind("change", @render)


	render:->
		## change star color based on starred
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
		
		## if the stat is starred, then set value & change img src
		if @model.attributes.starred is true
			stat.set 
				"starred":false
			$("img[data-role='#{stat.id}']").attr 'src','assets/icons/star.png'
		else
			stat.set 
				"starred":true
			$("img[data-role='#{stat.id}']").attr 'src','assets/icons/star_d.png'

		stat.save()

	delete:(e)->
		e.preventDefault()

		really = confirm("Are you seriously about to delete this stat? ")

		if really 
			@model.destroy()

