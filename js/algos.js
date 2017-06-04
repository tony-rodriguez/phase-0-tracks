/* ---Finding the Longest Phrase---
Input: an array
Output: a string

- First, create an empty string variable to contain the longest phrase
- Then, initiate a loop to iterate over each item in the array
- Compare the length of each item in the array to what is contained in the 'longest phrase' variable
- IF the item at the current iteration is longer than what is in the string, reassign the string to contain the current item
- return the 'longest phrase' variable
*/
// ------------------------------------------------------------------
/* ---Checking 2 Objects for Matching Key-Value Pairs---
Input: 2 Objects
Output: Boolean


- For both objects, store all keys and all values in separate arrays
- Iterate through the array of keys and array of values of the first object, checking for matches in the array of keys and array of values of the second object
- If at any point a match is found, break out of loops and return true
- If all keys and values are checked and no matches are found, return false
*/

function longestPhrase(phrases) {
  var longest = ''
  for(i=0; i < phrases.length; i++) {
    if (phrases[i].length > longest.length) {
      longest = phrases[i]
    }
  }
  return longest;
}

function objectMatchChecker(ob1, ob2) {
  var keys1 = Object.keys(ob1);
  var keys2 = Object.keys(ob2);
  var vals1 = Object.values(ob1);
  var vals2 = Object.values(ob2);

  for(i = 0; i < keys1.length; i++) {
    for(j = 0; j < keys2.length; j++) {
      if(keys1[i] == keys2[j] || vals1[i] == vals2[j]) { return true }
    }
  }
  return false
}


// Test code for longestPhrase function
// var test1 = ["long phrase","longest phrase","longer phrase"];
// var test2 = ["this is a phrase","here is another","this is also a phrase","one more"];
// var test3 = ["dog","cat","mouse","rhinocerous","rabbit","horse","elephant"];

// console.log(test1);
// console.log(longestPhrase(test1));

// console.log(test2);
// console.log(longestPhrase(test2));

// console.log(test3);
// console.log(longestPhrase(test3));

// Test code for objectMatchChecker function
var testobject1 = {color: "blue", size: "small", name: "Sparky"};
var testobject2 = {shape: "flat", quantity: "none"}

console.log(objectMatchChecker(testobject1, testobject2))
console.log(objectMatchChecker({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(objectMatchChecker({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));