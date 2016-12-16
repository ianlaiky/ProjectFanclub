/**
 * Created by Ying on 13/12/2016.
 */


'use strict';

var CV_URL = 'https://vision.googleapis.com/v1/images:annotate?key=' + window.apiKey;

$(function () {
    $('#fileform').on('submit', uploadFiles);
});

/**
 * 'submit' event handler - reads the image bytes and sends it to the Cloud
 * Vision API.
 */
function uploadFiles (event) {
    event.preventDefault(); // Prevent the default form post

    // Grab the file and asynchronously convert to base64.
    var file = $('#fileform [name=fileField]')[0].files[0];
    var reader = new FileReader();
    reader.onloadend = processFile;
    reader.readAsDataURL(file);
}

/**
 * Event handler for a file's data url - extract the image data and pass it off.
 */
function processFile (event) {
    var content = event.target.result;
    sendFileToCloudVision(content.replace('data:image/jpeg;base64,', ''));
}

/**
 * Sends the given file contents to the Cloud Vision API and outputs the
 * results.
 */
function sendFileToCloudVision (content) {
    var type = $('#fileform [name=type]').val();

    // Strip out the file prefix when you convert to json.
    var request = {
        requests: [{
            image: {
                content: content
            },
            features: [{
                type: "LABEL_DETECTION",
                maxResults: 200
            }]
        }]
    };

    /*   $('#results').text('Loading...');
     $.post({
     url: CV_URL,
     data: JSON.stringify(request),
     contentType: 'application/json'
     }).fail(function (jqXHR, textStatus, errorThrown) {
     $('#results').text('ERRORS: ' + textStatus + ' ' + errorThrown);
     }).done(displayJSON);
     }
     */


  /*  $('#results').text('Loading...');
    $.post({
            url: CV_URL,
            data: JSON.stringify(request),
            contentType: 'application/json'
        },
        function (response) {

            // show the raw json
            $('#results').text(JSON.stringify(response));

        });
} */


$('#results').text('Loading...');
$.post({
        url: CV_URL,
        data: JSON.stringify(request),
        contentType: 'application/json'
    }).fail(   function (response) {

    // show the raw json
    $('#results').text(JSON.stringify(response));
    var text = '<b>Is this </b> ' + response.list[3].labelAnnotations.description + '? <br/>';
    text += '<b>Confidence level for this prediction: </b>' + response.list[3].labelAnnotations.score + '<br/>';
    $('#labeldetect').append(text);


}).done(displayJSON);
}

    /**
     * Displays the results.
     */
    function displayJSON (data) {
        var contents = JSON.stringify(data, null, 4);
        $('#results').text(contents);
        var evt = new Event('results-displayed');
        evt.results = contents;
        document.dispatchEvent(evt);
    }

    function readURL(input){
        if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#blah')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }