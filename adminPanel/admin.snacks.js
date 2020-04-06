const email = document.getElementById("email");

email.addEventListener("input", function (event) {
    if (email.validity.typeMismatch) {
        email.setCustomValidity("Please enter a valid email address");
    } else {
        email.setCustomValidity("");
    }
});

document.getElementById("name").value = "";
document.getElementById("status").value = "";
document.getElementById("description").value = "";
document.getElementById("price").value = "";
document.getElementById("image").value = "";


var Id = document.getElementById("id");
var name = document.getElementById("name").value;
var status = document.getElementById("status");
var description = document.getElementById("description");
var price = document.getElementById("price");
var image = document.getElementById("image");



