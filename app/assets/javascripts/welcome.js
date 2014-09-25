$(document).ready(function() {
  // page is now ready, initialize the calendar...

  $('#calendar').fullCalendar({
      // put your options and callbacks here
       events: '/events.json'
  })

  // $(document).on("click", '.create_event',function() {
  //   console.log("hello world")
  //   $.ajax({
  //     url: $(this).attr("new_event_path"),
  //     type: 'POST',
  //     dataType: 'script' 
  //   })
  // });
// <%= link_to "Create event", 'javascript:void(0);', class: "create_event", new_event_path: new_event_path %>
                      
  

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
});