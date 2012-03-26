class app.views.homeView extends Support.CompositeView
	id:"home"
	className: "container"

	initialize:->

	render:->

		$(@el).html JST['mobile/templates/home/index']
			wines:@collection

		@collection.each (drink)=>
			featured = new app.views.homeFeatured(model:drink)
			$(@el).find('.stations').append(featured.render().el)

		@featuredSlide()

		return @
		
	featuredSlide:->
		@featuredSlider = new Swipe(
			document.getElementById("featured-slider")
		)

