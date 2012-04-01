class app.views.statsIndex extends Support.CompositeView
	id:"stats"
	className: "row"

	events:
		"click .add":"add"

	initialize:->
		@$ = $(@el)
		
		_.bindAll(@,"render")
		@collection.bind("change", @render)
		@collection.bind("destroy", @render)

		@category = @options.category



	render:->

		@$.html ""
		@stats()
		@highlight()

		return @

	getCategory:->
		if @category != "all"
			@collection = @collection.where
				category_id:@category

	stats:->
		@collection.each (stat)=>

			stat = new app.views.statItem
				model:stat

			@$.append stat.render().el

		@$.append "<div class='btn add'>Add Stat</div>"

	highlight:->
		$('.categories li').removeClass 'active'
		$('.categories').find("li[data-role='#{@category}']").addClass 'active'


	add:(e)->
		console.log e
		e.preventDefault()
		name = prompt "Stat Name:"

		if name 
			newStat = new app.models.stat
				name:name
				category_id:@category

			console.log @collection
			newStat.save()
			@collection.add(newStat)



