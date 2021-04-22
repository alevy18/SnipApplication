//
//  Protocols.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/20/21.
//

import Foundation

protocol Password {
    func validatePassword(password: String) -> Bool
    func atLeastFiveChars(text: String) -> Bool
    func containsSpecialChar(text: String) -> Bool
}

extension Password {
    func validatePassword(password: String) -> Bool {
        if atLeastFiveChars(text: password) == true &&
            containsSpecialChar(text: password) == true {
            return true
        }
        return false
    }
    
    func atLeastFiveChars(text: String) -> Bool{
        return text.count >= 5 ? true : false
    }
    
    
    func containsSpecialChar(text: String) -> Bool{
        let specialCharArr = ["!","@","#","$","%","^","&,","*"]
        for char in specialCharArr {
            if text.contains(char){
                return true
            }
        }
        return false
    }
}
