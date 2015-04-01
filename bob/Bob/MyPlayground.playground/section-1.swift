// Playground - noun: a place where people can play

import Cocoa

enum Responses: String {
    case Question = "Sure."
    case Shouting = "Woah, chill out!"
    case Normal   = "Fine, be that way!"
    case Default  = "Whatever."
}

struct Bob {
    
    static func hey(input: String) -> String {
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
    
    private static func isShouting(comment: String) -> Bool {
        let upper = comment.uppercaseString
        let lower = comment.lowercaseString
        
        return comment == upper && upper != lower
    }
    
    private static func isAsking(comment: String) -> Bool {
        return suffix(comment, 1) == "?"
    }
    
    private static func isSilent(comment: String) -> Bool {
        var newString = comment.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        return newString.isEmpty
    }
    
}

Bob.hey("")





