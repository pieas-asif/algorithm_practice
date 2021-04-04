//
//  main.swift
//  algo_expert_practice
//
//  Created by Shaman Sharif on 4/4/21.
//

// find two sum from array

// solution one
//var hashTable = [Int: Bool]()
//var listOfNumbers = [3,5,-4,8,11,1,-1,6]
//var resultNumber = 10
//
//for num in listOfNumbers {
//    if hashTable[resultNumber-num] != nil {
//        print("\(resultNumber-num), \(num)")
//        break
//    } else {
//        hashTable[num] = true
//    }
//}


// solution two
var listOfNumbers = [3,5,-4,8,11,1,-1,6]
var sortedListOfNumbers = listOfNumbers.sorted()
var resultNumber = 10
var firstIter = 0
var lastIter = listOfNumbers.count-1
var currentSum: Int

while true {
    if lastIter == firstIter {
        break
    }
    currentSum = listOfNumbers[firstIter] + listOfNumbers[lastIter]
    if currentSum > resultNumber {
        lastIter -= 1
    } else if currentSum < resultNumber {
        firstIter += 1
    } else{
        print("\(listOfNumbers[firstIter]), \(listOfNumbers[lastIter])")
        break
    }
}


