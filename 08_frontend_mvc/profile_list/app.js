var profiles = [{
    username: 'phil',
    blurb: 'little pony',
    image_url: "http://cdn-0.justdogbreeds.com/images/breeds/shiba-inu.jpg"
}, {
    username: 'beta',
    blurb: 'phil',
    image_url: "http://cdn-0.justdogbreeds.com/images/breeds/shiba-inu.jpg"
}];

var profileItem = _.template($("#profile-item-template").html());

_.each(profiles, function(profile, index) {
	console.log(profile.username);
	var html = profileItem(profile);
	console.log(html);
	$('#container').append(html);
});