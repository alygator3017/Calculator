function validateFormRectangle() {
    var length = document.forms["rectangleForm"]["rectangleLength"].value;
    var width = document.forms["rectangleForm"]["rectangleWidth"].value;
    if (length === null || length === "" || width === null || width === "") {
        alert("Fields must be filled in.");
        return false;
    }
}
function validateFormCircle(){
    var radius = document.forms["circleForm"]["radius"].value;
    if (radius === null || radius === "") {
        alert("Radius field must be filled in.");
        return false;
    }
}
function validateFormTriangle(){
    var base = document.forms["triangleForm"]["base"].value;
    var height = document.forms["triangleForm"]["height"].value;
    if (base === null || base === "" || height === null || height === "") {
        alert("Fields must be filled in.");
        return false;
    }
}


