//: Playground - noun: a place where people can play

import Cocoa
import Darwin

// Create an empty array of integers
var numbersToSort : [Int] = []

// Add three numbers to the array
numbersToSort.append(12)
numbersToSort.append(7)
numbersToSort.append(31)

// How many numbers are in the array?
var elementCount = numbersToSort.count

// Index of last element of array
var lastIndex = elementCount - 1

// What is the value in the first element?
numbersToSort[0]

// What is the value in the second element?
numbersToSort[1]

// What is the value in the third element?
numbersToSort[2]

// Let's review the contents of the array
numbersToSort

// Pre-pend or insert a value to the top of this array
// STEP 1: PUSH ALL EXISTING ELEMENTS DOWN
//         Loop in reverse, from bottom of the array to the top of the array
for counter in (1...lastIndex).reverse() {
    
    // When at very end of array, add one element to end, a copy of the current bottom
    if (counter == lastIndex) {
        
        numbersToSort.append(numbersToSort[counter])
        
    }
    
    // For all positions in array, we need to move value down
    numbersToSort[counter] = numbersToSort[counter - 1]
    
}

// STEP 2: Insert the new element at the top of the array
numbersToSort[0] = 99

// Now, what are the new contents of the array?
numbersToSort
