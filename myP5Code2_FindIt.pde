var starXPos = [];
var starYPos = [];
var star = "⭐️";
var starTotal = 100;

var planetXPos = [];
var planetYPos = [];
var planet = "🪐";
var planetTotal = 3;
var planetFound = 0;

var item = ["⌛", "👽", "🧙", "☂️", "💍", "🌍", "🦞", "🐈", "🍖", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""];
var itemTotal = 50;
var itemFound = 0;
var itemXPos = [];
var itemYPos = [];

var prince = loadImage("https://static.wikia.nocookie.net/p__/images/e/eb/Img_prince.png/revision/latest?cb=20231102135857&path-prefix=protagonist");

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < planetXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, planetXPos[i], planetYPos[i])<15){
      planetXPos.splice(i, 1);
      planetYPos.splice(i, 1);
      planetFound++;
    }
  }
}

var display = function(){
  background(0,0,0,0);

  fill(200,200,0);
  textSize(35);
  
  

  for(var i = 0; i < planetXPos.length; i ++){
    text(planet, planetXPos[i], planetYPos[i]);
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }

  fill(255,255,255);
  text(itemFound + "/" + itemTotal, 10, 435);

  if(itemFound == itemTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart the game", 50, 200);
  }
  
  image(prince, 200, 200, 130, 130);
}

var reset = function(){
  starXPos = [];
  starYPos = [];
  planetXPos = [];
  planetYPos = [];
  planetFound = 0;
  
  var itemFound = 0;
  var itemXPos = [];
  var itemYPos = [];


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

  for(var i = 0; i < planetTotal; i++){
    planetXPos.push(random(0,600));
    planetYPos.push(random(0,400));
  }
}