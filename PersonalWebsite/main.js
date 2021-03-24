
var aboutMeText = "Hey, I'm Yarin."
var i = 0;
var x = 0;
//var txt = 'Hello!'; /* The text */
//var speed = 170; /* The speed/duration of the effect in milliseconds */
function typeWriter(txt, speed) {
    var text = arguments[0];
    var speed = arguments[1];
    console.log(speed);
    console.log(text);
    if (i < text.length) {
        document.getElementById("header").innerHTML += text.charAt(i);
        i++;
        setTimeout(function () {
            typeWriter(text, speed);
        }, speed);
      
    }
     
}

function typeAboutMe(txt) {
    var txt = arguments[0];
    if (x < txt.length) {
        document.getElementById("about-me").innerHTML += txt.charAt(x);
        x++;
        setTimeout(function () {
            typeAboutMe(txt)
        }, 120);

    }
    //i = 0;
}

function buttonClicked() {
    console.log("You clicked the button!");
}



