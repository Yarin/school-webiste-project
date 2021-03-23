var i = 0;
//var txt = 'Hello!'; /* The text */
var speed = 170; /* The speed/duration of the effect in milliseconds */
function typeWriter(txt) {
    var text = arguments[0];
    console.log(text);
    if (i < text.length) {
        document.getElementById("header").innerHTML += text.charAt(i);
        i++;
        setTimeout(function () {
            typeWriter(text);
        }, speed);
        
    }
}



