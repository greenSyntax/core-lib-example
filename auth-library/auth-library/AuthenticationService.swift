//
//  AuthenticationService.swift
//  auth-library
//
//  Created by Abhishek Ravi on 17/07/24.
//

import Foundation

public class AuthenticationService {
    
    var googleSign: GoogleSignIn
    var facebookSign: FacebookSignIn
    
    public init() {
        self.googleSign = GoogleSignIn()
        self.facebookSign = FacebookSignIn()
    }
    
    public func login(_ type: String) {
        //TODO:
    }
    
    public func signOut(token: String) {
        //TODO:
    }
    
    public func getUserData() -> UserData {
        return UserData(fullName: "Abhishek", email: "ab.abhishek.ravi@gmail.com", mobile: "7289000000")
    }
}
