//
//  Array.swift
//  DS n A
//
//  Created by Rohit Saini on 09/03/21.
//  Copyright © 2021 AccessDenied. All rights reserved.
//

import Foundation

//MARK:- Longest Common Sum
func longestCommonSum(arr: [Int],arr2:[Int],n: Int) -> Int{
    var maxLen = 0
    for i in 0..<n{
        var sum1 = 0
        var sum2 = 0
        for j in i..<n{
            sum1 += arr[j]
            sum2 += arr2[j]
            if sum1 == sum2{
                let len = j - i + 1
                if len > maxLen{
                    maxLen = len
                }
            }
        }
    }
    return maxLen
}

//MARK:- Union
func union(arr: [Int],arr2:[Int]){
    var i = 0
    var j = 0
    while(i < arr.count && j < arr2.count){
        if arr[i] < arr2[j]{
            print(arr[i])
            i += 1
        }
        else if arr[i] > arr2[j]{
            print(arr2[j])
            j += 1
        }
        else{
            print(arr[i])
            i += 1
            j += 1
        }
    }
    
    while i < arr.count {
        print(arr[i])
        i += 1
    }
    while j < arr2.count {
        print(arr2[j])
        j += 1
    }
}

//MARK:- Intersection
func Intersection(arr: [Int],arr2:[Int]){
    var i = 0
    var j = 0
    while(i < arr.count && j < arr2.count){
        if arr[i] < arr2[j]{
            i += 1
        }
        else if arr[i] > arr2[j]{
            j += 1
        }
        else{
            print(arr[i])
            i += 1
            j += 1
        }
    }
}

//MARK: - Missing Number
//Tip: sum = n*(n+1)/2
func missingNumber(arr:[Int]) -> Int{
    var total = (arr.count + 1) * (arr.count + 2) / 2
    for i in 0..<arr.count{
        total -= arr[i]
    }
    return total
}


//MARK:- minimumDistanceBetweenTwoArrayNumbers
func minimumDistanceBetweenTwoArrayNumbers(arr: [Int],x: Int,y: Int) -> Int{
    var min_dist = Int.max
    var prev = 0
    for i in 0..<arr.count{
        if arr[i] == x || arr[i] == y{
            prev = i
            break
        }
    }
    for i in prev..<arr.count{
        if arr[i] == x || arr[i] == y{
            if arr[prev] != arr[i] && i - prev < min_dist{
                min_dist = i - prev
                prev = i
            }
            else{
                prev = i
            }
        }
    }
    return min_dist
}

//MARK:- Leaders
func Leaders(arr: [Int]){
    var leader = arr[arr.count - 1]
    print(leader)
    for i in stride(from: arr.count - 2, through: 0, by: -1){
        if arr[i] > leader{
            leader = arr[i]
            print(leader)
        }
    }
}


