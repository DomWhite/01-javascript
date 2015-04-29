_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

//-------------------------------------------------------

var profiles = [{
  username: 'phil',
  blurp: 'little pony',
  flirt: 5,
  image_url: 'https://placekitten.com/g/300/200'
}, {
  username: 'beta',
  blurp: 'phil phil phil',
  flirt: 500,
  image_url: 'https://placekitten.com/g/300/200'
}];
/*
render: is setting the variable el (html elements) to build the mark up
*/
var ProfileItemView = Backbone.View.extend({
  //el: is already built in
  render: function() {
    //this.model is convention
    //this.$el.html("<div>flirt " + this.model.flirt +  "</div>")
    //searching the model "profile"

    var template = _.template( $("#profile-item-template").html() );
    this.$el.html(template(this.model));
  }
});

//profiles is a list. "For each item is the list do the function(profile)"
//with profile(singular) being each item in the list, in this case, an object
_.each(profiles, function(profile) {
  var view = new ProfileItemView({ model: profile});
  console.log(view.el);
  view.render();
  console.log(view.el);
  // $('#container').append(view.el);
})