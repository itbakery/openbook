# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
jQuery ->
  $('#organization_valid_from').datepicker
    dateFormat: 'yy-mm-dd'
  $('#organization_valid_to').datepicker
    dateFormat: 'yy-mm-dd'
