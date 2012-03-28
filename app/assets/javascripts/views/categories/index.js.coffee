class app.views.categoriesIndex extends Support.CompositeView
	tagName:'ul'
	className: "categories"

	initialize:->

	render:->
		@parseCategories()
		return @

	parseCategories:->
		for i in [1..5]
			$(@el).append JST['templates/categories/category']

		$(@el).append JST['templates/categories/categoryAdd']