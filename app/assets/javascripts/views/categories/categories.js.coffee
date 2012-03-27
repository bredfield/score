class app.views.categoriesIndex extends Support.CompositeView
	tagName:'ul'
	className: "categories"

	initialize:->

	render:->
		$(@el).html JST['templates/categories/index']
		return @

