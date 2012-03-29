class app.views.categoriesIndex extends Support.CompositeView
	tagName:'ul'
	className: "categories"

	initialize:->

	render:->
		@parseCategories()
		return @

	parseCategories:->
		$(@el).append JST['templates/categories/categoryAll']

		@collection.each (cat)=>
			console.log cat.get('id')
			$(@el).append JST['templates/categories/category']
				category:cat

		$(@el).append JST['templates/categories/categoryAdd']