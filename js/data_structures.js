var colors = ["blue", "red", "green", "grey"];
var horses = ["Ed", "Longtail", "Leggy", "Gandalf"];

colors.push("brown");
horses.push("Seabiscuit");

// console.log(colors);
// console.log(horses);

var barn = {}

for(i = 0; i < colors.length; i++) {
  barn[horses[i]] = colors[i]
}

// console.log(barn)

function Car(make, model, year) {

  this.make = make;
  this.model = model;
  this.year = year;

  this.display = function() {
    console.log("This car is a " + this.year + ' ' + this.make + ' ' + this.model + ".")
  }

  console.log("Car initialization complete.")
}

console.log("Let's build our first car!")
var myCar = new Car("Honda", "Civic", "2005");
console.log("Our car has the ability to print out its information:")
myCar.display();
console.log('-----------')

console.log("Let's build another car!")
var newCar = new Car("Ford", "Focus", 2017);
newCar.display();
console.log('-----------')

console.log("Why not one more!")
var yourCar = new Car("Kia", "Optima", 2015);
yourCar.display();
console.log('-----------')