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

console.log(barn)