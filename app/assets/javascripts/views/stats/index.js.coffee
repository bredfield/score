class app.views.statsIndex extends Support.CompositeView
	id:"stats"
	className: "row"

	events:
		"click .add":"add"
		"click a":"prevent"

	initialize:->
		@$ = $(@el)
		
		_.bindAll(@,"render")
		@collection.bind("add", @render)
		@collection.bind("destroy", @render)

		@category = @options.category

	render:->

		@getCategory()
		@$.html ""
		@stats()
		@highlight()

		return @

	getCategory:->
		## Filter stats based on category
		if @category != "all"
			@categories = @collection.where
				category_id:@category

			## Change badge numbers (for refresh after add/delete)
			$(".categories li[data-role='#{@category}']").find('.badge').html @categories.length

		else
			@categories = @collection
			$(".categories li[data-role='all']").find('.badge').html @collection.length

	stats:->
		## Filter through stats, create items
		@categories.each (stat,i)=>

			stat = new app.views.statItem
				model:stat
			@renderChild(stat)
			@$.append stat.el

		## Add 'add' button to end
		@$.append '<div class="stat span5 add">+</div>'

	highlight:->
		## Change 'active' category
		$('.categories li').removeClass 'active'
		$('.categories').find("li[data-role='#{@category}']").addClass 'active'


	add:(e)->
		# e.preventDefault()
		name = prompt "Stat Name:"

		if name 
			newStat = new app.models.stat
				name:name
				category_id:@category

			newStat.save()
			@collection.add(newStat)

	prevent:(e)->
		e.preventDefault()





