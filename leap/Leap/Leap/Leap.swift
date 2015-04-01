//
//  Leap.swift
//  Leap
//
//  Created by Pat White on 3/17/15.
//  Copyright (c) 2015 Pat White. All rights reserved.
//

import Foundation

class Year {
    
    var calendarYear: Int
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    func isLeapYear() -> Bool {
        
        if (self.calendarYear % 100 == 0) {
            
            if (self.calendarYear % 400 == 0) {
                
                return true
                
            } else {
                
                return false
                
            }
            
        } else if (self.calendarYear % 4 == 0) {
            return true
        }
        
        return self.calendarYear % 4 == 0
    }
    
}
