// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

// describe("shhh", () => {
//   it("takes in a string and returns a string with a coded message", () => {
//     const secretCodeWord1 = "Lackadaisical";
//     const secretCodeWord2 = "Gobbledygook";
//     const secretCodeWord3 = "Eccentric";
//     expect(shhh(secretCodeWord1)).toEqual("L4ck4d41s1c4l");
//     expect(shhh(secretCodeWord2)).toEqual("G0bbl3dyg00k");
//     expect(shhh(secretCodeWord3)).toEqual("3cc3ntr1c");
//   });
// });
// --> ReferenceError: shhh is not defined

// b) Create the function that makes the test pass.
// Pseudo code:
// input: any given string of characters
// output: altered original string with specified letters converted to specified numbers
// create a dynamic fxn that takes in any given string and outputs the secret code
// return the result of the following:
// use .replace on the given string
// 'gi' matches each instance of aeiou regardless of case to preserve capsed inputted letters
// store in match var
// switch method to check match var and replace as needed
// default to return no change on unmatched characters
// return converted string
const shhh = (string) => {
  return string.replace(/[aeio]/gi, function (match) {
    switch (match.toLowerCase()) {
      case "a":
        return "4";
      case "e":
        return "3";
      case "i":
        return "1";
      case "o":
        return "0";
      default:
        return match;
    }
  });
};
// console.log(shhh(secretCodeWord1))
// PASS: ✓ takes in a string and returns a string with a coded message (4 ms)

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.
// const hand1 = [5, 5, 5, 3, 3];
// // Expected output: true
// const hand2 = [5, 5, 3, 3, 4];
// // Expected output: false
// const hand3 = [5, 5, 5, 5, 4];
// // Expected output: false
// const hand4 = [7, 2, 7, 2, 7];
// // Expected output: true

describe("fullHouse", () => {
  it("takes in an array of 5 numbers and determines whether or not the array is a full house", () => {
    const hand1 = [5, 5, 5, 3, 3];
    const hand2 = [5, 5, 3, 3, 4];
    const hand3 = [5, 5, 5, 5, 4];
    const hand4 = [7, 2, 7, 2, 7];
    expect(fullHouse(hand1)).toEqual(true);
    expect(fullHouse(hand2)).toEqual(false);
    expect(fullHouse(hand3)).toEqual(false);
    expect(fullHouse(hand4)).toEqual(true);
  });
});
// --> ReferenceError: fullHouse is not defined
// failed again after fxn created bc boolean values i originally put as strings in expected:
// -->  Expected: "true"
// Received: true
// FIXED :D
// PASS:  ✓ takes in an array of 5 numbers and determines whether or not the array is a full house (4 ms)

// b) Create the function that makes the test pass.

// Pseudo code:
// input: an array of 5 numbers
// output: determines whether or not the array is a full house
// create a dynamic fxn that takes in any given array of 5 nums
// create a new var inside to store each num in the hand
// iterate through the nums and populate the "frequencyMap" object
// create boolean vars and default to false
// check frequency of each number in the "frequencyMap" object
// if frequency is 2 set pair to true
// if freq is 3 set threeofakind var to true
// if both vars are true, return true for full house
// if either is false, return false for not full house

const fullHouse = (array) => {
  const frequencyMap = {};
  for (const num of array) {
    frequencyMap[num] = (frequencyMap[num] || 0) + 1;
  }

  let hasPair = false;
  let hasThreeOfAKind = false;

  for (const num in frequencyMap) {
    if (frequencyMap.hasOwnProperty(num)) {
      if (frequencyMap[num] === 2) {
        hasPair = true;
      } else if (frequencyMap[num] === 3) {
        hasThreeOfAKind = true;
      }
    }
  }

  return hasPair && hasThreeOfAKind;
};
// console.log(fullHouse(hand2));
