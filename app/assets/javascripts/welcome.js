$(document).ready(function() {
  // page is now ready, initialize the calendar...

  $('#calendar').fullCalendar({
      // put your options and callbacks here
       events: '/events.json'
  })
  $(document).on("click", '.create_event',function() {
    $("#menu-item-Calendar a").click()
    console.log("its working!!!")
    console.log($(this).attr("some_random_path"))
    $.ajax({
      url: $(this).attr("some_random_path"),
      type: 'PATCH',
      dataType: 'script',
      data: {event: {title: $(this).attr('event_title'), start: $(this).attr('start'), event_type: $(this).attr('event_type'), user_id: $(this).attr('user_id'), workflow_state: "done"} }
      // success: function(data?) {
      //   $(".after_they_clicked_ajax_button_page").html("What is this argument?" you had <img src='" + data.avatar_url + "'> in here which appears to give us a new picture)
      //   // console.log(data); I need to run Event.next_event, then repaint my html.
      // }
 // on success, can I just repaint the event with next future event? and do the same with the suggestion fields?   
    })
    $
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
