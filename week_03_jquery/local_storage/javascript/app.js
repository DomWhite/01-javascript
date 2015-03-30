function newTask(text) {
    var tasks = JSON.parse(localStorage.getItem("tasks"));
    tasks.push(text); 
    localStorage.setItem("tasks", JSON.stringify(tasks))

    var $tasks = $('#tasks');
    var $newTask = $('<li>').html(text);
    $tasks.append($newTask);
}


$(document).ready(function() {

    console.log("good to go");

    var tasks = JSON.parse(localStorage.getItem("tasks")); //calls on localStorage to repopulate the list 

    $.each(tasks, function(index, elem) {
        var $tasks = $('#tasks');
        var $newTask = $('<li>').html(elem);
        $tasks.append($newTask);
    });

    //submit event
    //addEventListener()
    $('form').on('submit', function(event) {
        event.preventDefault(); //takes over and prevents submission to server
        console.log("Submitting");

        var $newTask = $('form input');
        newTask($newTask.val());
        $newTask.val('');
    });

    //EVENT DELEGATION ////////////////////////////////
    $('#tasks').on('click', 'li', function() { // within #tasks look for <li>
        console.log("clicking list item: ", this);

        // $(this).addClass('done');  //jquery function changes context to clicked item
        // $(this).hasClass('done'); //returns a true or false value can be used with if statement
        // $(this).parent().remove();
        // $(this).toggleClass('done');
        // $(this).remove();

        $(this).appendTo('#done'); //appendTo takes the origin and appendTo target
        // removes from #tasks list and then moves to #done
        //Working in a relative area instead of reading the whole page

        $("#done").append(this); //append needs target first then origin
        // console.log('parent: ', $(this).parent());

    })

});