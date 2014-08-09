#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require jquery.turbolinks
#= require lib.layout/jquery.layout
#= require global

$ ->
  $('body').layout(
    applyDefaultStyles: true
    north: {
      spacing_open    : 0
      spacing_closed  : 0
    }
    west: {
      spacing_closed       : 22
      togglerLength_closed : 140
      togglerAlign_closed  : "top"
      togglerContent_closed: "C<br>O<br>N<br>T<br>E<br>N<br>T<br>S"
    }
  )