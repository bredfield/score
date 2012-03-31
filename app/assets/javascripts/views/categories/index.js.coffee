class app.views.categoriesIndex extends Support.CompositeView
	tagName:'ul'
	className: "categories"

	events:
		'click .add':'newCategory'

	initialize:->
		_.bindAll(@,"render")
		@collection.bind("add", @render)

	render:->
		@parseCategories()
		return @

	parseCategories:->
		$(@el).html JST['templates/categories/categoryAll']
			count:app.stats.length

		@collection.each (cat)=>
			
			count = app.stats.where
				category_id:cat.id

			count = count.length
			cat.count = count

			$(@el).append JST['templates/categories/category']
				category:cat

		$(@el).append JST['templates/categories/categoryAdd']

	newCategory:()->
		newCat = new app.models.category
			name:'test'
		newCat.save()
		console.log newCat.id
		@collection.add(newCat)
