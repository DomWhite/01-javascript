_.templateSettings = {
    interpolate: /\{\{(.+?)\}\}/g
}

//------------------------------------------

// var dishes = [{
// 	title: 'cakepudding',
// 	starCount: 5
// }, {
// 	title: 'kalepudding',
// 	starCount: -67
// }]

//BACKBONE VIEW
// HTML (template)
// INTERACTION (events)
// DATA (model)

// Backbone way ----------------------------------------------------

var Dish = Backbone.Model.extend({

	defaults: function() {
		this.set('title', this.randDish());
	},

	randDish: function() {
		var names = 'cake pudding bourbon muffin beer cheesy'.split(' ')
		return _.sample(names, 2).join(' ');
	}

});

var dishes = [];
dishes.push(new Dish({
	title: 'cakepudding',
	starCount: 5
	}));

dishes.push(new Dish({
	title: 'bourbon cakes',
	starCount: 3
	}));


var DishItemView = Backbone.View.extend({
	events: {
		"click .star": "addStar",
		"click h2": "showDetail"
	},

	initialize: function() {
		this.listenTo(this.model, 'change', this.render);
	},

	showDetail: function() {
		console.log("Yay")
		$('#container').empty() //jQuery function empty()
		$('#container').html('<h1>' + this.model.get('title') + '</h1>')
	},

	addStar: function() {
		//this.model is our data

		// var count = parseInt( this.$el.find('.count').html() );
		// console.log(count);
		// count++;
		// this.$el.find('.count').html(count)

		// this.model.starCount++
		// this.render();

		var count = this.model.get('starCount') + 1
		this.model.set('starCount', count);


	},

	render: function() {
		var htmlMaker = _.template( $('#dish-item-template').html() );
		var html = htmlMaker(this.model.toJSON()); //model = data
		this.$el.html(html);
	}

});


// APPEND ALL

_.each(dishes, function(dish) {
	var view = new DishItemView({ model: dish })
	view.render();
	$('#container').append(view.el);
})

$('#magic-btn').on('click', function() {
	//create a new dish model object
	var dishModel = new Dish ( { title: 'fairy floss', starCount: 2} )

	// create a new view passing in data
	var view = new DishItemView({ model: dishModel })
	//can also be seen as:
	// var view = new DishItemView({ model: {
	// 				title: "beer muffin",
	// 				starCount: 5
	// 		}
	// 	})
	//render to construct to html
	view.render();
	// append html back to document
	$('#container').append(view.el);
});



// WITHOUT BACKBONE MODELS

// _.each(dishes, function(dish) {
// 	// create a new view passing in data
// 	var view = new DishItemView({ model: dish })
// 	//render to construct to html
// 	view.render();
// 	// append html back to document
// 	$('#container').append(view.el);
// })




//jQuery Way ------------------------------------------------------

//cycle through each item in dishes and append to page in #container
// _.each(dishes, function(dish) {
// 	var htmlMaker = _.template( $('#dish-item-template').html() );
// 	var html = htmlMaker(dish)
// 	$('#container').append(html)
// })

//DELEGATION  (star within container for all current and future ones)
// $('#container').on('click', '.star', function(){
// 	var $count = $(this).parent().find('.count')
// 	var starCount = parseInt($count.html(), 10);
// 	console.log(starCount);
// 	starCount = starCount + 1
// 	$count.html(starCount);
// })

// $('#magic-btn').on('click', function() {
// 	//add new dish item
// 	//get template
// 	var htmlMaker = _.template( $('#dish-item-template').html() );
// 	//get data
// 	var html = htmlMaker(dishes[0])
// 	//merge template and data, then append
// 	$('#container').append(html)
// })

