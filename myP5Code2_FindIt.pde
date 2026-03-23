var itemBank = ["⌛", "🛸", "🧙", "☂️", "💍", "🌍", "🦞", "🐈", "🍖", "🛀", "🎈", "🧫", "📺", "🔮", "🏺", "🧲", "📫", "🎠", "🚁", "🛶", ".", "🏥", "🎡", "🎮", "🪀", "🪕", "🎨", "🥡", "🍎", "🌭", "🦑", ".", "🐋", "🦩", "🦖", "🐒", "🧜🏿", "👴🏿", "👩🏾‍🎤", "👩🏽‍💻", ".", "📎", "🪑", "💿", "📸", "💡", "🛒", "🛍", "🧿", "🌻"];
var item = [];
var itemTotal = 50;
var itemFound = 0;
var itemXPos = [];
var itemYPos = [];

var prince = loadImage("https://static.wikia.nocookie.net/p__/images/e/eb/Img_prince.png/revision/latest?cb=20231102135857&path-prefix=protagonist");
var princeX = 250;
var princeY = 150;

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

   if(keyPressed){
    if(key == 'w'){
      princeY -= 3;
    }
    if(key == 'a'){
      princeX -= 3;
    }
    if(key == 's'){
      princeY += 3;
    }
    if(key == 'd'){
      princeX += 3;
    }
   }
  

  display();
}


var display = function(){
  background(0,0,0,0);

  fill(200,200,0);
  textSize(35);
  
  

  for(var i = 0; i < itemXPos.length; i ++){
    text(item[i], itemXPos[i], itemYPos[i]);
  }

  //dont change this
  fill(255,255,255);
  text(itemFound + "/" + itemTotal, 10, 435);

  if(itemFound == itemTotal){
    fill(0, 200, 200);
    textSize(50);
    text("your katamari is now a star! 'r' to restart", 50, 200);
  }
  
  image(prince, princeX, princeY, 130, 130);
}

var reset = function(){
  
  itemFound = 0;
  itemXPos = [];
  itemYPos = [];
  item = [];


  


  for(var i = 0; i < itemTotal; i++){
    item.push(itemBank[round(random(itemBank.length-1))])
    itemXPos.push(random(0,600));
    itemYPos.push(random(0,400));
  }
}