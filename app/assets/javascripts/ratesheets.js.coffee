# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
getDayword = (d)->
  myDays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
  myDays[d.getDay()]
jQuery ->
  $('#ratesheet_date').datepicker
    dateFormat: 'yy-mm-dd'
    numberOfMonths: 2

  $('#ratesheet_date').change ->
    myDays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    date = new Date($('#ratesheet_date').val())
    #alert(myDays[date.getDay()])
    $('#ratesheet_day').val(myDays[date.getDay()])
    #alert(getDayword(date))
