class app.views.optionsPop extends Support.CompositeView
	className: "pop options span4"

	events:
		'click .save':'save'
		'click .cancel':'unrender'

	initialize:->
		# _.bindAll(@,"render")
		# @model.bind("change", @render)


	render:->
		$(@el).html JST['templates/stats/options']
			stat:@model
			categories:app.categories
		return @

	save:->
		@model.set 
			name: $("#stat_name").val()
			category_id: $("#stat_category").val()
		@model.save()
		@unrender()

	unrender:->
		$(@el).removeData().unbind().remove()
		@.unbind()
		@.remove()
