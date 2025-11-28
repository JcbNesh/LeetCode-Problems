// Problem: 1071 Greatest Common DivisorofStrings
// Difficulty: Easy
// LeetCode Link: https://leetcode.com/problems/greatest-common-divisor-of-strings/?envType=study-plan-v2&envId=leetcode-75

var gcdOfStrings = function (str1, str2) {
  if (str1 + str2 !== str2 + str1) return "";
  let a = str1.length;
  let b = str2.length;
  while (b) {
    let temp = b;
    b = a % b;
    a = temp;
  }
  return str1.substring(0, a);
};
// Example usage:
console.log(gcdOfStrings("ABCABC", "ABC")); // Output: "ABC"
console.log(gcdOfStrings("ABABAB", "ABAB")); // Output: "AB"
console.log(gcdOfStrings("LEET", "CODE")); // Output: ""

/* For two strings s and t, we say "t divides s" if and only if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

 

Example 1:

Input: str1 = "ABCABC", str2 = "ABC"
Output: "ABC"
Example 2:

Input: str1 = "ABABAB", str2 = "ABAB"
Output: "AB"


The approach to finding the Greatest Common Divisor (GCD) of Strings is based on two key ideas:

Existence Check: Determining if a common divisor string even exists.

Length Calculation: Finding the length of the GCD string using the Euclidean Algorithm on the lengths of the input strings.







*/
