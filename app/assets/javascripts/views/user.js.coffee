class app.views.userInfo extends Support.CompositeView
	className: "user"

	render:->
		$(@el).html JST['templates/user/info']
		return @

