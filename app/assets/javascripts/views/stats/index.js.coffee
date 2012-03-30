class app.views.statsIndex extends Support.CompositeView
	id:"stats"
	className: "row"

	initialize:->
		@category = @options.category

		if @category != "all"
			@collection = @collection.where
				category_id:@category



	render:->
		@stats()
		$('.categories li').removeClass 'active'
		$('.categories').find("li[data-role='#{@category}']").addClass 'active'

		return @

	stats:->

		@collection.each (stat)=>

			stat = new app.views.statItem
				model:stat

			$(@el).append stat.render().el
