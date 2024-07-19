//
//  AuthHelper.swift
//  auth-library
//
//  Created by Abhishek Ravi on 17/07/24.
//

import Foundation

class GoogleSignIn {
    //TODO:
}

class FacebookSignIn {
    //TODO:
}

public class UserData {
    let fullName: String
    let email: String
    let mobile: String
    
    init(fullName: String, email: String, mobile: String) {
        self.fullName = fullName
        self.email = email
        self.mobile = mobile
    }
}
