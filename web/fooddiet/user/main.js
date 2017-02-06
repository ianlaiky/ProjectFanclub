/**
 * Created by Ying on 13/12/2016.
 */


'use strict';

var CV_URL = 'https://vision.googleapis.com/v1/images:annotate?key=' + window.apiKey;
var food;
var KEY = FOOD_KEY;

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

/*
$('#results').text('Loading...');
$.post({
        url: CV_URL,
        data: JSON.stringify(request),
        contentType: 'application/json'
    }).fail(   function (response) {

    // show the raw json
   // $('#results').text(JSON.stringify(response));
    var text = '<b>Is this </b> ' + response.list[3].labelAnnotations.description + '? <br/>';
    text += '<b>Confidence level for this prediction: </b>' + response.list[3].labelAnnotations.score + '<br/>';
    $('#results').append(text);



});//.done(displayJSON);
}
*/


   $('#results2').text('Loading...');
    $.post({
        url: CV_URL,
        data: JSON.stringify(request),
        contentType: 'application/json'
    }).fail(   function (jqXHR, textStatus, errorThrown) {
        $('#results').text('ERRORS: ' + textStatus + ' ' + errorThrown);
        console.log(textStatus + ' ' + errorThrown);

        // show the raw json
        // $('#results').text(JSON.stringify(response));

    }).done(function (response) {
        var text;
        console.log(response);
        $.each(response, function (key, data) {
            console.log(key)
            $.each(data, function (index, data) {
                console.log('index', data)

                $.each(data.labelAnnotations, function (key, data) {
                    console.log('index', data)
                   // if(data.score >= 0.7 && new String(data.description).valueOf() != new String('\"food\"').valueOf()){

                    /*
                    Function: Filtering off unnecessary labels
                     */
                    if(data.score >= 0.7 && JSON.stringify(data.description) !== '\"food\"' && JSON.stringify(data.description) !== '\"dish\"'
                    && JSON.stringify(data.description) !== '\"dessert\"' && JSON.stringify(data.description) !== '\"plant\"'
                        && JSON.stringify(data.description) !== '\"produce\"'  && JSON.stringify(data.description) !== '\"cuisine\"'
                        && JSON.stringify(data.description) !== '\"fruit\"' && JSON.stringify(data.description) !== '\"berry\"'
                        && JSON.stringify(data.description) !== '\"baked goods\"'  && JSON.stringify(data.description) !== '\"fast food\"'
                        && JSON.stringify(data.description) !== '\"meal\"'  && JSON.stringify(data.description) !== '\"slider\"'
                        && JSON.stringify(data.description) !== '\"asian food\"'  && JSON.stringify(data.description) !== '\"side dish\"'){
                        console.log(JSON.stringify(data.description) !== '\"food\"');
                        console.log(JSON.stringify(data.description) !== '\"dish\"');
                        console.log('index', data)
                        food = data.description.replace("/\'/", "");
                        console.log(food);
                         /*   return item.description == "food", item.description == "\'dish\'", item.description == "dessert"
                                ,item.description == "plant", item.description == "produce", item.description == "fruit"
                                ,item.description == "berry", item.description == "baked goods",item.description == "fast food",
                            item.description == "meal". item.description == "slider",  item.description == "cuisine",
                            item.description == "'asian food'", item.description == "side dish"; */
                        text = '<b>Is this </b> ' + JSON.stringify(data.description) + '? <br/>';
                        text += '<b>Confidence level for this prediction: </b>' + JSON.stringify(data.score) + '<br/>';
                     return false;
                    }

                })
            })
        })

        document.getElementById('results2').innerHTML = text;
        var evt = new Event('results-displayed');
        evt.results = text;
        document.dispatchEvent(evt);
        // Check browser support
        if (typeof(Storage) !== "undefined") {
            // Store
            localStorage.setItem('my_key',food);
            // Retrieve
            var test = localStorage.getItem("my_key");
            console.log(test);
        } else {
            console.log("Sorry, your browser does not support Web Storage...");
        }



    });
    console.log(KEY);

}




        /*

 ====original important====
         .done(function (response){
         console.log(response);
         $.each(response, function (key, data) {
         console.log(key)
         $.each(data, function (index, data) {
         console.log('index', data)

         $.each(data.labelAnnotations[3],function(key,data){
         console.log('index', data)
         var text = '<b>Is this </b> ' + JSON.stringify(data) + '? <br/>';
         text += '<b>Confidence level for this prediction: </b>' + JSON.stringify(data.score) + '<br/>';
         document.getElementById('results2').innerHTML = text;
         })
         })
         })



         ==== oeiginal ====
        var obj = JSON.parse(response);
        $.each( obj, function(i, item) {
            alert(obj.responses[i].labelAnnotations[i].score);
        });​

        var text = '<b>Is this </b> ' + response.responses.labelAnnotations[3].description + '? <br/>';
        text += '<b>Confidence level for this prediction: </b>' + response.responses.labelAnnotations[3].score + '<br/>';
        document.getElementById('results').innerHTML = text;
        alert("done"); */





   /* $('#results').text('Loading...');
    $.post({
        url: CV_URL,
        data: JSON.stringify(request),
        contentType: 'application/json'
    }).fail(   function (jqXHR, textStatus, errorThrown) {
        $('#results').text('ERRORS: ' + textStatus + ' ' + errorThrown);
        console.log(textStatus + ' ' + errorThrown);

        // show the raw json
        // $('#results').text(JSON.stringify(response));

    }).done(displayJSON2);
} */

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

function displayJSON2 (data) {
    var contents = JSON.stringify(data, null, 4);
    var obj = JSON.parse(contents);
    var a = obj.response.list[3].labelAnnotations.score;
    $('#results').text(arr);
    var evt = new Event('results-displayed');
    evt.results = contents;
    document.dispatchEvent(evt);
}

/*Array.prototype.removeIf = function(callback) {
    var i = this.length;
    while (i--) {
        if (callback(this[i], i)) {
            this.splice(i, 1);
        }
    }
}; */



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