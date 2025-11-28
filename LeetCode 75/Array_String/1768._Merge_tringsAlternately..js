var mergeAlternately = function (word1, word2) {
  let result = "";
  let i = 0;
  while (i < word1.length || i < word2.length) {
    if (i < word1.length) {
      result += word1[i];
    }
    if (i < word2.length) {
      result += word2[i];
    }
    i++;
  }
  return result;
};
// Example usage:
console.log(mergeAlternately("abc", "pqr")); // Output: "apbqcr"
console.log(mergeAlternately("ab", "pqrs"));; // Output: "apbqrs"
console.log(mergeAlternately("abcd", "pq")); // Output: "apbqcd"
/* 
You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

Return the merged string.

 
Example 1:

Input: word1 = "abc", word2 = "pqr"
Output: "apbqcr"
Explanation: The merged string will be merged as so:
word1:  a   b   c
word2:    p   q   r
merged: a p b q c r


Initialize an empty string to store the merged result.
Traverse both input strings together, picking each character alternately from both strings and appending it to the merged result string.
Continue the traversal until the end of the longer string is reached.
Return the merged result string.

*/