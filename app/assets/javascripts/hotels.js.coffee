# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    console.log("remove")
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    console.log("add")
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $('input[name*="valid_from"]').datepicker
    dateFormat: 'yy-mm-dd'
  $('input[name*="valid_to"]').datepicker
    dateFormat: 'yy-mm-dd'

  updateFormLocationEventos = (point) ->
    $('#hotel_latitude').val(point.lat())
    $('#hotel_longitude').val(point.lng())
    $('#hotel_zoom').val(Gmaps.map.map.getZoom())

  initialize = () ->
    lat = $('#hotel_latitude').val()
    lng = $('#hotel_longitude').val()

    hotel = new google.maps.LatLng(lat,lng)
    mapOptions =
      center: hotel
      zoom: 14
      mapTypeId: google.maps.MapTypeId.ROADMAP
    map = new google.maps.Map(document.getElementById('map_canvas'),mapOptions)


    marker = new google.maps.Marker
      position: hotel
      draggable: true
      map: map

    hotelname = $('#hotel_name1').val()
    link =  $('#hotel_url').val()
    contentstring =
      "<div>"+
      "<h3> #{hotelname} </h3>"+
      "url: <a href=\"#{link}\">website</a>"+
      "</div>"
    infowindow = new google.maps.InfoWindow
      content:  "#{contentstring}"

    google.maps.event.addListener marker, 'click', () ->
      infowindow.open(map,marker)


    google.maps.event.addListener marker,'dragend', (event)->
      document.getElementById('hotel_latitude').value = this.position.lat()
      document.getElementById('hotel_longitude').value = this.position.lng()
      document.getElementById('hotel_zoom').value = map.getZoom()

    google.maps.event.addListener map, 'zoom_changed', () ->
      document.getElementById('hotel_zoom').value = map.getZoom()


  google.maps.event.addDomListener(window, 'load', initialize)
  $('.best_in_place').best_in_place()
