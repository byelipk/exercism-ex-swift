//
//  Bob.swift
//  Bob
//
//  Created by Pat White on 3/31/15.
//  Copyright (c) 2015 Pat White. All rights reserved.
//

import Foundation

enum Responses: String {
    case Question = "Sure."
    case Shouting = "Woah, chill out!"
    case Normal   = "Fine, be that way."
    case Default  = "Whatever."
}

protocol Answerable {
    class func hey(input: String) -> String 
    class func isShouting(comment: String) -> Bool
    class func isAsking(comment: String) -> Bool
    class func isSilent(comment: String) -> Bool
}

class Bob: Answerable {
    
    class func hey(input: String) -> String {
        var response: Responses
        
        if Bob.isShouting(input) {
            response = Responses.Shouting
        } else if Bob.isAsking(input) {
            response = Responses.Question
        } else if Bob.isSilent(input) {
            response = Responses.Normal
        } else {
            response = Responses.Default
        }
        
        return response.rawValue
    }
    
    class func isShouting(comment: String) -> Bool {
        let upper = comment.uppercaseString
        let lower = comment.lowercaseString
        
        return comment == upper && upper != lower
    }
    
    class func isAsking(comment: String) -> Bool {
        return suffix(comment, 1) == "?"
    }
    
    class func isSilent(comment: String) -> Bool {
        var newString = comment.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        return newString.isEmpty
    }
    
}