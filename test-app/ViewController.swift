//
//  ViewController.swift
//  test-app
//
//  Created by Abhishek Kumar Ravi on 19/07/24.
//

import UIKit
import analytics_library
import auth_library

class ViewController: UIViewController {

    lazy var analytics: AnalyticsService = {
        return AnalyticsService()
    }()
    
    lazy var authService: AuthenticationService = {
       return AuthenticationService()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authService.login("google_signin")
    }


}

