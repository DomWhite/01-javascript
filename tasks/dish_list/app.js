_.templateSettings = {
    interpolate: /\{\{(.+?)\}\}/g
}


var app = {
	counter: 0
}

var dishes = [{
	dishname: 'Cake pudding',
	blurb: 'at General Assembly',
	stars: 40,
	image_url: 'http://www.spendwithpennies.com/wp-content/uploads/2013/10/gooey-chocolate-pudding-cake-it.jpg'
}, {
	dishname: 'Beer pudding',
	blurb: 'at General Assembly',
	stars: 100,
	image_url: 'http://2.bp.blogspot.com/-CsNwLnlyALk/UuZsWKcE1rI/AAAAAAAAII4/z6JThq4aO4E/s1600/Wells+Sticky+Toffee+Pudding+Ale.JPG'
}, {
	dishname: 'Tomato',
	blurb: 'at General Assembly',
	stars: 1000000,
	image_url: 'http://fruitandvegetablesmelbourne.com.au/wp-content/uploads/2015/04/tomato-.jpg'
}, {
	dishname: 'Deer',
	blurb: 'at General Assembly',
	stars: 3,
	image_url: 'http://www2.b3ta.com/fp-archive/host/10339338-1.jpg'
}]

var DishItemView = Backbone.View.extend({
		className: "dish-element",
		events: {
			"click .btnStar": "increment"
		},

		increment: function() {
			this.model.stars++
			this.render();
		},

	  render: function() {
        var template = _.template($("#dish-item-template").html()); 
        this.$el.html(template(this.model));
    }
})


$(document).ready(function() {
	  $('#btnClickMe').on('click', function() {
	    var view = new DishItemView({model: dishes[app.counter]});
	    view.render();
	    $('#container').append(view.el);
	    app.counter++
	   });
})

// to append all at once

// _.each(dishes, function(dish){
//     var view = new DishItemView({model: dish});
//     view.render();
//     $('#container').append(view.el);
// })


