class app.views.statItem extends Support.CompositeView
	className: "stat span4"

	events:
		"click a.delete":"delete"
		"click a.star":"toggleStarred"
		"click a.options":"optionsPop"
		"click li.button.plus":"add"
		"click li.button.minus":"minus"

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
			category:@options.category
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

	optionsPop:()->
		options = new app.views.optionsPop
			model:@model

		@renderChild(options)

		$(@el).append options.el

	delete:(e)->

		really = confirm("Are you seriously about to delete this stat? ")

		if really 
			@model.destroy()

	add:()->
		node = $(@el).find('.number')
		number = parseInt(node.html())
		node.html( number+1)

	minus:()->
		node = $(@el).find('.number')
		number = parseInt(node.html())
		node.html( number-1)


