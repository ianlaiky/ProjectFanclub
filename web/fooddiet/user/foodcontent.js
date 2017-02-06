/**
 * Created by Ying on 6/2/2017.
 */

'use strict';

var foodResult = localStorage.getItem("my_key");
var KEY1 = FOOD_KEY;
var FOOD_URL = 'https://api.nal.usda.gov/ndb/reports'
console.log(foodResult);
var ndbno;


/*

$.get(
    "https://api.nal.usda.gov/ndb/search/",
    {
        "q": foodResult,
        "api_key": KEY1

    },
    function(data) {
        console.log(data);
        console.log( JSON.stringify(data, null, '    '))
    }
);
*/

/*
$.get(
    "https://api.nal.usda.gov/ndb/search/",
    {
     //   "q": foodResult,
        "q": "cheese",
        "api_key": KEY1

    },
    function(data) {
        console.log(data);
        console.log( JSON.stringify(data, null, '    '))
    }
);
*/

$.ajax({
    url:'https://api.nal.usda.gov/ndb/search/?q=' + foodResult  + '&api_key=' + KEY1,
    type: 'GET',
    dataType: 'json',
    contentType: 'application/json',
    success: function (data) {
        var text;
        console.log(data);
        console.log(JSON.stringify(data, null, '    '));
        $.each(data.list.item, function (key, data) {
            console.log('index', data)
            /*
             Function: Filtering off unnecessary labels
             */
            if(data[0]){
                console.log('index', data[0]);
                ndbno = data.ndbno.replace("/\"/", "");
                console.log(ndbno);

                text = '<b>Is this </b> ' + JSON.stringify(data.description) + '? <br/>';
                text += '<b>Confidence level for this prediction: </b>' + JSON.stringify(data.score) + '<br/>';
                return false;
            }

        })
        $.ajax({
            url: 'http://api.nal.usda.gov/ndb/reports/?ndbno=' + ndbno + '&type=b&format=json&api_key=' + KEY1,
            type: 'GET',
            success: function (results) {
             //   var food0 = results.report.food;
            //    console.log(data.ndbno[0]);
          //      console.log(food0);
                console.log(JSON.stringify(results, null, '    '));
              /*  $("#jsGrid-nutrition").jsGrid("insertItem", {
                    name: food0.name,
                    kCal: food0.nutrients[1].measures[0].value,
                    servingSize: food0.nutrients[1].measures[0].label,
                    quantity: food0.nutrients[1].measures[0].qty,
                    carbs: food0.nutrients[4].value + food0.nutrients[4].unit,
                    fats: food0.nutrients[3].value + food0.nutrients[3].unit,
                    saturatedFats: food0.nutrients[3].value + food0.nutrients[3].unit,
                    protein: food0.nutrients[24].value + food0.nutrients[24].unit
                }); */
            }

        });
    },
    error: function (error) {

    }
});


/*$.get(
    FOOD_URL,
    {
        "api_key": KEY,
        "ndbno": "01009"
    },
    function(data) {
        console.log(data);
        console.log( JSON.stringify(data, null, '    '))
    }
);
 */