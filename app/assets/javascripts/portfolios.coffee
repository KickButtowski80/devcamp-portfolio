# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# lecture 151 ruby on rails desection in udemy
ready = undefined
set_positions = undefined

set_positions = ->
  $(".card").each (i) ->
   $(this).attr 'data-pos', i + 1
   return 
  return
# -> declaring a function 
ready = -> 
  set_positions()
  $('.sortable').sortable() 
  # sortupdate comes from html.sortable.js file , look up there
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []
    set_positions()
    $('.card').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: "PUT"
      # the portfoilios/sort will be crated in routes file
      url: '/portfolios/sort'
      data: order: updated_order
    return
  return 
  
$(document).ready ready  