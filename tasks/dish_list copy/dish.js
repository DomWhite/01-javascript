var Dish = Backbone.Model.extend({
	//if no data is passed the name will be random
  defaults: function() {
    this.set('title', this.randDish());
  },
  randDish: function() {
    var names = "cake pudding bourbon muffin beer cheesy".split(' ')
    return _.sample(names, 2).join(' ');
  },

  urlRoot: 'http://localhost:3000/dishes'
});