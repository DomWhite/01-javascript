_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

//-----------------------------------------------

var AboutView = Backbone.View.extend({
	// don't use el yet
	tagName: 'h1',
	render:function() {
		this.$el.html("about");
		return this;
	}
});

var HomeView = Backbone.View.extend({
	tagName: 'h1',
	render: function() {
		this.$el.html("home");
		return this;
	}
});

var Router = Backbone.Router.extend({
	routes: {
// route : function
		"home": "home",
		"about": "about",
		"foo/:bar": "foobar"
	},

	home: function() {
		console.log("at home");
		var view = new HomeView();
		$('#container').html(view.render().el);
	},

	about: function() {
		console.log("at about");
		var view = new AboutView();
		$('#container').html(view.render().el);
	},
//parametre is taken from routes(i.e. :bar this is by position(placeholder))
	foobar: function(bar) {
		console.log("foo bar " + bar);
	}

});

var router = new Router();
Backbone.history.start(); // turn router on

$('span').on('click', function() {
	router.navigate('home', true);
});

