
var aboutMeText = "Hey, I'm Yarin."
var i = 0;
var x = 0;
var y = 0;
var flag = true;
//var txt = 'Hello!'; /* The text */
//var speed = 170; /* The speed/duration of the effect in milliseconds */
function typeWriter(txt, speed) {
    var text = arguments[0];
    var speed = arguments[1];
    var element = document.getElementById("paragraph-title");
    console.log(speed);
    console.log(text);
    
    if (i < text.length) {
        element.innerHTML += text.charAt(i);
        i++;
        setTimeout(function () {
            typeWriter(text, speed);
        }, speed);
        
      
    }
    

    
     
}

function typeMyProjects(speed) {
    var speed = arguments[0];
    var text = "My Projects";
    var element = document.getElementById("project-title");
    

    if (y < text.length) {
        element.innerHTML += text.charAt(y);
        y++;
        setTimeout(function () {
            typeMyProjects(speed);
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



