class app.views.categoriesIndex extends Support.CompositeView
	tagName:'ul'
	className: "categories"

	events:
		'click .add':'newCategory'
		'mousedown':'mouse'



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
			name:prompt "Category Name:"

		newCat.save()
		@collection.add(newCat)

	mouse:(e)->
		if e.which is 3
			console.log e.target
