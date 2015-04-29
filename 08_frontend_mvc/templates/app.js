// <div>phil</div>

function profileTemplate(name) {
	return "<div>" + name + "</div>"
}

// var profileItem = _.template("<div><%= name %> and <%= name2 %></div>");
// profileItem({name: 'phil', name2: 'beta'});

var profileItem = _.template($('#profile-item-tpl').html());
// profileItem({name: "cody perry"})


var users = ['phil', 'beta', 'cody perry'];


