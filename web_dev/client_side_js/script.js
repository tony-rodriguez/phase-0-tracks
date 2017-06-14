console.log("The script is running!");

// var unorderedList = document.getElementsByClassName("ul");

var newSection = document.createElement('div');
var text = document.createTextNode("We added this with JS!");
newSection.appendChild(text);

console.log(newSection)

var referenceP = document.getElementById('second paragraph');

parent = referenceP.parentNode;
parent.insertBefore(newSection, referenceP)
var allHeaders = document.getElementsByClassName('header');

for(i=0; i<allHeaders.length; i++) {
  allHeaders[i].style.color = 'blue';
}

function colorText(event) {
  event.target.style.color = 'purple';
}

var ol = document.getElementById("ordered list");
var orderedItems = ol.children;
for(j=0; j<orderedItems.length; j++) {
  orderedItems[j].addEventListener("click", colorText);
}

var ul = document.getElementById('unordered list')
var unorderedItems = ul.children
unorderedItems[0].addEventListener("mouseover", dogPic);
unorderedItems[0].addEventListener("mouseout", mouseOut);
var image = document.getElementById('golden image');
image.style.display = 'none'

function dogPic() {
  image.style.display = 'block';
}

function mouseOut(){
  image.style.display = 'none';
}