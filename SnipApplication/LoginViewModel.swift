//
//  LoginViewModel.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/19/21.
//

import Foundation


class LoginViewModel {
    
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
