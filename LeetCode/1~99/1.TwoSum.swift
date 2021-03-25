//
//  1.TwoSum.swift
//  LeetCode
//
//  Created by xian on 2021/3/25.
//

import Foundation

/*Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

//我的写法,暴力解法，时间复杂度为O（n2），空间复杂度为O（1）
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    for i in 0 ..< nums.count {
        for j in i+1 ..< nums.count {
            if nums[i] + nums[j] == target {
                return [i,j]
            }
        }
    }
    return []
}

//使用了hash存储已经遍历过的数据
func hash_twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var hash: [Int : Int] = [:]
    var resArray : [Int] = [];
    
    for (i, num) in nums.enumerated() {
        if let index = hash[target - num] {
            resArray.append(index)
            resArray.append(i)
            return resArray
        }
        hash[num] = i
    }
    return resArray;
}


/* Test ========================================================================================== */

//let a = [2,7,9,11]
//print(hash_twoSum(a, 9))

