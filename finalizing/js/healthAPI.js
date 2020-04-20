

var HttpClient = function () {
    this.get = function (aUrl, aCallback) {
        var anHttpRequest = new XMLHttpRequest();
        anHttpRequest.onreadystatechange = function () {
            if (anHttpRequest.readyState == 4 && anHttpRequest.status == 200)
                aCallback(anHttpRequest.responseText);
        }
        anHttpRequest.open("GET", aUrl, true);
        anHttpRequest.send(null);
    }
}

var theurl = 'https://www.hpb.health.gov.lk/api/get-current-statistical';
var client = new HttpClient();

client.get(theurl, function (response) {
    var response1 = JSON.parse(response);
    // var response1 = response.data;
    console.log(response1.data.update_date_time);
    document.getElementById("confirmed").textContent = response1.data.local_total_cases;
    document.getElementById("active").textContent = response1.data.local_active_cases;
    document.getElementById("newcases").textContent = response1.data.local_new_cases;
    document.getElementById("deaths").textContent = response1.data.local_deaths;
});


