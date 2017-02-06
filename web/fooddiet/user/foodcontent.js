/**
 * Created by Ying on 6/2/2017.
 */

'use strict';

var foodResult = localStorage.getItem("my_key");
var KEY = FOOD_KEY;
var FOOD_URL = 'https://api.nal.usda.gov/ndb/reports'
console.log(foodResult);



$.post(
    "https://api.nal.usda.gov/ndb/search",
    {
        "api_key": KEY,
        "q": foodResult
    },
    function(data) {
        console.log(data);
        console.log( JSON.stringify(data, null, '    '))
    }
);

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