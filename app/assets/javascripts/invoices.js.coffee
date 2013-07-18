# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#invoice_customer_firstname').autocomplete
    source: $('#invoice_customer_firstname').data('autocomplete-source')
    select: (event, ui) ->
      alert  ui.item.value

  $('#invoice_order_date').datepicker
    dateFormat: 'yy-mm-dd'
    numberOfMonths: 2


