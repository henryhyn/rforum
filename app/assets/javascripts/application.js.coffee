#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require jquery.turbolinks

$ ->
  $(".button-unstop").click( ->
    event = $(this).parent()
    event_id = event.attr('id').split('-')[1]
    status = $(this).children('i').attr('class').split('-')[1]
    request =
      type: "GET"
      url: "/~#{event_id}/events/#{event_id}/#{status}"
    $.ajax(request)
  )