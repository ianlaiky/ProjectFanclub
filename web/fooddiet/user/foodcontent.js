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
        console.log( JSON.stringify(data, null, '    '))
        $.ajax({
            type: 'GET',
            async: false,
            url: 'http://api.nal.usda.gov/ndb/reports/?ndbno=' + data.ndbno[0] + '&type=b&format=json&api_key=',
            success: function(results) {
                food0 = results.report.food;
                console.log(food0);
                $("#jsGrid-nutrition").jsGrid("insertItem", {
                    name: food0.name,
                    kCal: food0.nutrients[1].measures[0].value,
                    servingSize: food0.nutrients[1].measures[0].label,
                    quantity: food0.nutrients[1].measures[0].qty,
                    carbs: food0.nutrients[4].value + food0.nutrients[4].unit,
                    fats: food0.nutrients[3].value + food0.nutrients[3].unit,
                    saturatedFats: food0.nutrients[3].value + food0.nutrients[3].unit,
                    protein: food0.nutrients[24].value + food0.nutrients[24].unit
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