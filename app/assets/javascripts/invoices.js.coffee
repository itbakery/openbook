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

#  $('#invoices').dataTable
#    sDom: "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
#    sPaginationType: "bootstrap"
#  $('form').on 'click', '.remove_fields_invoice', (event) ->
#    console.log("here")
#    $(this).closest('tr').hide()
#    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()
