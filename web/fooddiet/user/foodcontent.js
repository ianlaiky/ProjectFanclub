/**
 * Created by Ying on 6/2/2017.
 */

'use strict';

var foodResult = localStorage.getItem("my_key");
var KEY1 = FOOD_KEY;
var FOOD_URL = 'https://api.nal.usda.gov/ndb/reports'
console.log(foodResult);


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
        console.log(data);
        console.log(JSON.stringify(data, null, '    '));
        $.each(data.list.item, function (key, data) {
            console.log('index', data)

            /*
             Function: Filtering off unnecessary labels
             */
            if(data.score >= 0.7 && JSON.stringify(data.description) !== '\"food\"' && JSON.stringify(data.description) !== '\"dish\"'
                && JSON.stringify(data.description) !== '\"dessert\"' && JSON.stringify(data.description) !== '\"plant\"'
                && JSON.stringify(data.description) !== '\"produce\"'  && JSON.stringify(data.description) !== '\"cuisine\"'
                && JSON.stringify(data.description) !== '\"fruit\"' && JSON.stringify(data.description) !== '\"berry\"'
                && JSON.stringify(data.description) !== '\"baked goods\"'  && JSON.stringify(data.description) !== '\"fast food\"'
                && JSON.stringify(data.description) !== '\"meal\"'  && JSON.stringify(data.description) !== '\"slider\"'
                && JSON.stringify(data.description) !== '\"asian food\"'  && JSON.stringify(data.description) !== '\"side dish\"'
                && JSON.stringify(data.description) !== '\"bavarian cream\"'){
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
        $.ajax({
            type: 'GET',
            async: false,
            url: 'http://api.nal.usda.gov/ndb/reports/?ndbno=' + data.ndbno[0] + '&type=b&format=json&api_key=' + KEY1,
            success: function (results) {
                var food0 = results.report.food;
                console.log(data.ndbno[0]);
                console.log(food0);
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