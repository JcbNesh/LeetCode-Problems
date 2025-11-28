// Problem: 1431. Kids With the Greatest Number of Candies
// Difficulty: Easy
// LeetCode Link: https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/?envType=study-plan-v2&envId=leetcode-75

var kidsWithCandies = function (candies, extraCandies) {
  let max = candies[0];
  let result = [];
  for (let i = 0; i < candies.length; i++) {
    if (candies[i] > max) {
      max = candies[i];
    }
  }

  for (let x = 0; x < candies.length; x++) {
    if (candies[x] + extraCandies >= max) {
      result.push(true);
    } else {
      result.push(false);
    }
  }

  return result;
};
// Example usage:
console.log(kidsWithCandies([2, 3, 5, 1, 3], 3)); // Output: [true,true,true,false,true]
console.log(kidsWithCandies([4, 2, 1, 1, 2], 1)); // Output: [true,false,false,false,false]
console.log(kidsWithCandies([12, 1, 12], 10)); // Output: [true,false,true]

/* 
1431. Kids With the Greatest Number of Candies

There are n kids with candies. You are given an integer array candies, where each candies[i] represents the number of candies the ith kid has, and an integer extraCandies, denoting the number of extra candies that you have.

Return a boolean array result of length n, where result[i] is true if, after giving the ith kid all the extraCandies, they will have the greatest number of candies among all the kids, or false otherwise.

Note that multiple kids can have the greatest number of candies.

 

Example 1:

Input: candies = [2,3,5,1,3], extraCandies = 3
Output: [true,true,true,false,true] 
Explanation: If you give all extraCandies to:
- Kid 1, they will have 2 + 3 = 5 candies, which is the greatest among the kids.
- Kid 2, they will have 3 + 3 = 6 candies, which is the greatest among the kids.
- Kid 3, they will have 5 + 3 = 8 candies, which is the greatest among the kids.
- Kid 4, they will have 1 + 3 = 4 candies, which is not the greatest among the kids.
- Kid 5, they will have 3 + 3 = 6 candies, which is the greatest among the kids.


Approach
1.Scan the array to find the maximum candies among all kids.
2.Loop through the list again and check if candies[i] + extraCandies is at least equal to that maximum.
3.Store true or false in the result array depending on the comparison.
4.Return the result array.


*/
