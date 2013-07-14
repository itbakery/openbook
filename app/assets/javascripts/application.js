// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery.ui.autocomplete
//= require jquery_ujs
//= require jquery.ui.datepicker
//= require twitter/bootstrap
//= require ckeditor
//= require dataTables/jquery.dataTables
//= require dataTables/jquery.dataTables.bootstrap
//= require jquery.purr
//= require best_in_place
//= require_tree .
var set_stars = function(stars){
   for(i=1; i<=5; i++){
       if (i <= stars) {
            $('#rate_'+i).addClass("on");
       }else{
            $('#rate_'+i).removeClass("on");
       }

   }
}

$(document).ready(function() {

   $('a').tooltip();

   if ($('#hotel_info').length > 0) {
     var data = $('textarea');
     $.each(data, function(i) {
       CKEDITOR.replace(data[i].id);
     });
   }

    var stars = $('#hotel_star').val();
        set_stars(stars);
    $('.rating_star').click(function(){
        var star = $(this);
        var stars = $(this).attr('data-stars');
        $('#hotel_star').val(stars);
        set_stars(stars);
    });

    $('#hoteltab a').click(function (e) {
        $('ul.nav-tabs li.active').removeClass('active');
        $(this).parent('li').addClass('active');
    })

});
