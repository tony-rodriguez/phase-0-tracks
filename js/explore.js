/* ---REVERSING A STRING---
Parameters: a string
Output: a new string

- Loop over the string that this function is called upon
- establish a new empty string to contain the reversed string
- Begin the loop at the end of the string, going over each letter until you have reached the beginning of the string
- For each letter that is iterated over, add it to the new string
- Return new reversed string
*/


function reverseString(word){
  var reversed = '';
  for (i = word.length - 1; i >= 0; i--){
    reversed += word[i]
  }
  return reversed
}

var test = reverseString("test string");

if (test != "test string" && (21/7)**2 == 9) {
  console.log(test);
} else {
  console.log("You failed.")
}