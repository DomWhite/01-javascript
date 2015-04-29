_.templateSettings = {
    interpolate: /\{\{(.+?)\}\}/g
}

var profiles = [{
    username: 'soul funk master of the universe',
    about: 'straight out ruler of the funk universe, soul master spends most of his time slaying birds',
    flirt: 5,
    image_url: "http://www.toimg.net/managed/images/10166537/w482/h298/image.jpg"
}, {
    username: 'beta',
    about: 'beta is a well known member with a strong character',
    flirt: 50,
    image_url: "http://www.charbase.com/images/glyph/946"
}];

// var profileItem = _.template($("#profile-item-template").html());

// _.each(profiles, function(profile, index) {

// 	var html = profileItem(profile);

// 	$('#container').append(html);
// });

// $('.profile-item').on('click', function() {
//     console.log('360 rotation');
//     console.log(this);
//     console.log("hello" + $(this).find('h2').html());
// })


//backbone creates objects like ruby classes
var ProfileItemView = Backbone.View.extend({
    events: {
        "click h2": "itemClicked",
    },
    itemClicked: function() {
        console.log('item clicked')
    },

    render: function() {
        var template = _.template($("#profile-item-template").html()); 
        this.$el.html(template({username: 'dt', about: 'vampire', image_url: 'http://i389.photobucket.com/albums/oo339/starfiregirl32/Shadow-Vampire-3.jpg', flirt: -100}));
    }
})

_.each(profiles, function(profile){
    var view = new ProfileItemView();
    view.render();
    $('#container').append(view.el);
})



// var MenuView = Backbone.View.extend({
//     el: '#menu', 
//     events: {
//         'click': 'menuClick'
//     },

//     menuClick: function() {
//         console.log('menu clicked');
//     }
// })

// var menuView = new MenuView();


var LikeWidgetView = Backbone.View.extend({
    elements: "<div><span>blah</span><button class ='like-btn'>like</button></div>",

    events: {
        "click .like-btn": "likeThis"
    },

    likeThis: function() {
        
    }
});






