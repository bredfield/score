class app.views.categoriesIndex extends Support.CompositeView
	tagName:'ul'
	className: "categories"

	initialize:->

	render:->
		@parseCategories()
		return @

	parseCategories:->
		$(@el).append JST['templates/categories/categoryAll']
			count:app.stats.length

		@collection.each (cat)=>
			
			count = app.stats.where
				category_id:cat.id

			count = count.length
			cat.count = count

			$(@el).append JST['templates/categories/category']
				category:cat

		$(@el).append JST['templates/categories/categoryAdd']