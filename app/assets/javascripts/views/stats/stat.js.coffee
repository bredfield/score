class app.views.statItem extends Support.CompositeView
	className: "track span5"

	initialize:->

	render:->
		$(@el).html JST['templates/stats/stat']
		return @

