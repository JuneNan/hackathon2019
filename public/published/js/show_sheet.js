$(document).ready(function(){
    $.getJSON( "data/sample_sheet.json", function( data ) {
        var items = [];
        console.log("성공")
        $.each( data, function( key, val ) {
           var appendHTML = dialog_sheet(data[key],key)
           $('.mdl-grid').append(appendHTML)
        });
    });
})

function dialog_sheet(data,i) {
    var appendHTML = ""
    if (i%2 == 0 ){ 
        appendHTML += "<div class='mdl-cell mdl-cell--2-col tc pr'>"
        appendHTML += "<div class='profile_area'>"
        appendHTML += "<div class='profile_picture dib' style='background-image: url("+"/img/dummy.jpg"+")'></div>"
        appendHTML += " <div class='f16 fwb tc mt5'>"
        appendHTML += data.name
        appendHTML += "</div>"
        appendHTML += "</div>"
        appendHTML += "</div>"
    } else {
        appendHTML +=  "<div class='mdl-cell mdl-cell--2-col'>"
        appendHTML += "</div>"
    }

    appendHTML +=  "<div class='mdl-cell mdl-cell--8-col fit'>"
    appendHTML +=  "<div class='announce_comment'>"
    appendHTML += data.word
    appendHTML += "</div>"
    appendHTML += "</div>"
    
    if (i%2 == 0 ){
        appendHTML +=  "<div class='mdl-cell mdl-cell--2-col'>"
        appendHTML += "</div>"
    } else {
        appendHTML += "<div class='mdl-cell mdl-cell--2-col tc pr'>"
        appendHTML += "<div class='profile_area'>"
        appendHTML += "<div class='profile_picture dib' style='background-image: url("+"/img/dummy.jpg"+")'></div>"
        appendHTML += " <div class='f16 fwb tc mt5'>"
        appendHTML += data.name
        appendHTML += "</div>"
        appendHTML += "</div>"
        appendHTML += "</div>"
    }
    console.log(data.name)
    return (appendHTML)
}
