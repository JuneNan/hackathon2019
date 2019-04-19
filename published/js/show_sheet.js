$(document).ready(function(){
    $.getJSON( "data/sample_sheet.json", function( data ) {
        var items = [];
        console.log("성공")
        $.each( data, function( key, val ) {
           console.log(data[key].name)
        });
    });
})

