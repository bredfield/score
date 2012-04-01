class app.views.categoriesIndex extends Support.CompositeView
	tagName:'ul'
	className: "categories"

	events:
		'click .add':'newCategory'
		'mousedown':'deleteCategory'



	initialize:->
		@$ = $(@el)
		_.bindAll(@,"render")
		@collection.bind("change", @render)
		@collection.bind("destroy", @render)

	render:->
		@parseCategories()
		return @

	parseCategories:->
		@$.html JST['templates/categories/categoryAll']
			count:app.stats.length

		@collection.each (cat)=>
			
			count = app.stats.where
				category_id:cat.id

			count = count.length
			cat.count = count

			@$.append JST['templates/categories/category']
				category:cat

		@$.append JST['templates/categories/categoryAdd']



	newCategory:()->
		name = prompt "Category Name:"
		
		if name 
			newCat = new app.models.category
				name:name

			newCat.save()
			@collection.add(newCat)
			@collection.fetch()

	deleteCategory:(e)->
		if e.which is 3
			id = $(e.target).closest('li').attr('data-role')
			category = @collection.get(id)

			really = confirm("Are you seriously about to delete this category? ")
			
			if really 
				category.destroy()

