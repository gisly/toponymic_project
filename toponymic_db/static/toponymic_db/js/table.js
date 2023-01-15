$(document).ready( function () {
        var tableObject = $('#toponymic_db');

        var table = $('#toponymic_db').DataTable();
        table.columns( '.select-filter' ).every( function () {
            var that = this;
            // Create the select list and search operation
            var select = $('<select />')
                .appendTo(
                    this.footer()
                )
                .on( 'change', function () {
                    that
                        .search( $(this).val() )
                        .draw();
                } );
            select.append('<option value="">*</option>');
            this
                .cache( 'search' )
                .sort()
                .unique()
                .each( function ( d ) {
                    select.append( $('<option value="'+d+'">'+d+'</option>') );
                } );
        } );
        tableObject.show();
} );

function clear_filter(){
     // Reset Column filtering
    var table = $('#toponymic_db').DataTable();
    table.search("").draw();
    table.columns( '.select-filter' ).every( function () {
        var that = this;
        that.search("").draw();
    });
}