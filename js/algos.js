/* ---Finding the Longest Phrase---
- Input: an array
- Output: a string

- First, create an empty string variable to contain the longest phrase
- Then, initiate a loop to iterate over each item in the array
- Compare the length of each item in the array to what is contained in the 'longest phrase' variable
- IF the item at the current iteration is longer than what is in the string, reassign the string to contain the current item
- return the 'longest phrase' variable
*/

function longestPhrase(phrases) {
  var longest = '';
  for(i=0; i < phrases.length; i++) {
    if (phrases[i].length > longest.length) {
      longest = phrases[i]
    }
  }
  return longest;
}


// Test code
var test1 = ["long phrase","longest phrase","longer phrase"];
var test2 = ["this is a phrase","here is another","this is also a phrase","one more"];
var test3 = ["dog","cat","mouse","rhinocerous","rabbit","horse","elephant"];

console.log(test1);
console.log(longestPhrase(test1));

console.log(test2);
console.log(longestPhrase(test2));

console.log(test3);
console.log(longestPhrase(test3));