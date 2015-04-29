//backbone.js

var view1 = {
	profile: {
		name: 'dt'
	},

	el: "<div></div>"

	initialize: function(data) {
		this.profile.name = 'anon'

		//setup this object to listen to events

		$('profile-item').find('.content').on('click', function) {
			complete();
		})

		$('profile-item').find('.delete').on('click', function) {
			$(this).remove();
		});
		
		$()
	},

	render: function() {
		this.domElement("<div>" + data + "</div>")
	}

