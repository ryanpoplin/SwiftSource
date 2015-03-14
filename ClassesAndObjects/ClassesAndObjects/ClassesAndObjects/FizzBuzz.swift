//
//  FizzBuzz.swift
//  ClassesAndObjects
//
//  Created by Byrdann Fox on 3/14/15.
//  Copyright (c) 2015 lycan.io. All rights reserved.
//

import Foundation

class FizzBuzz {
    
    let fizzBuzzLimit: Int = 100
    var fizzBuzzIndex: Int = 1
    
    // ...
    init () {
        
        for fizzBuzzIndex in 1...fizzBuzzLimit {
            
            if fizzBuzzIndex % 3 == 0 && fizzBuzzIndex % 5 == 0 {
                
                println("FizzBuzz")
                
            } else if fizzBuzzIndex % 3 == 0 {
                
                println("Fizz")
                
            } else if fizzBuzzIndex % 5 == 0 {
                
                println("Buzz")
                
            } else {
                
                println(fizzBuzzIndex)
                
            }
            
        }
        
    }
    
}