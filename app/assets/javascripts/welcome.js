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
      data: {event: {notes: $(this).attr('event_notes'), event_type: $(this).attr('event_type'), workflow_state: "done"}, suggestion: {category: $(this).attr('category')}, user_suggestion: {workflow_state: "done"}},
      success: function(res) {
       load_images("lazy", true, true);
     } 
   })
  });
});
