class app.views.categoriesIndex extends Support.CompositeView
	tagName:'ul'
	className: "categories"

	events:
		'click .add':'newCategory'
		'mousedown':'mouse'



	initialize:->

		_.bindAll(@,"render")
		@collection.bind("change", @render)
		@collection.bind("destroy", @render)

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
		name = prompt "Category Name:"
		
		if name 
			newCat = new app.models.category
				name:name

			newCat.save()
			@collection.add(newCat)
			@collection.fetch()

	mouse:(e)=>
		if e.which is 3
			id = $(e.target).closest('li').attr('data-role')
			category = @collection.get(id)

			really = confirm("You sure 'bout dat, nigga?")
			if really 
				category.destroy()

