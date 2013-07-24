$(document).ready( function () {
    $('#invoices').dataTable( {
         "sDom": "<'row'<'span4'l><'span4'f>r>t<'row'<'span4'i><'span4'p>>"
    });
    
    $.extend( $.fn.dataTableExt.oStdClasses, {
    "sWrapper": "dataTables_wrapper form-inline"
	} );
});
