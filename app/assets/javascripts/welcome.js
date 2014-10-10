$(document).ready(function() {
  // page is now ready, initialize the calendar...
  $('#calendar').fullCalendar({
      // put your options and callbacks here
      events: '/events.json'
    })
  $(document).on("click", '.update_event',function(event) {
    event.preventDefault();
    $("#menu-item-Calendar a").click()
    console.log("its working!!!")
    console.log($(this).attr("route_to"))
    $.ajax({
      url: $(this).attr("route_to"),
      type: 'PATCH',
      dataType: 'script',
      data: {event: {notes: $(this).attr('event_notes'), event_type: $(this).attr('event_type'), workflow_state: "done"}, mailer_content: {workflow_state: "done", category: $(this).attr('category')}},
      success: function(res) {
       load_images("lazy", true, true);
     } 
   })
  });
});

//   // live events
//   $(document).on('click', '.bro', function() {
//     $(this).css("background-color", "red")
//   })

//   $('.bro').click(function() {
//     $(this).css("background-color", "red")
//   })
                      
  //   $('.some_identifier').click(function() {
  //   var ajaxString = $(this).attr("ajax_string")
  //   $.ajax({
  //     url: "WHAT_GOES_HERE?" + ajaxString,
  //     type: 'GET',
  //     dataType: 'JSON',
  //     success: function(data) {
  //       $(".events_show_frame").html("<img src='" + data."AND_HERE?"_url + "'>")
  //       // console.log(data);
  //     }
  //   })
  // })

// <%= link_to "ajax_button", 'javascript:void(0);', class: 'some_identifier', ajax_string: "ajax_button" %>
//                       <div class="col-xs-6 events_show_frame"></div>
