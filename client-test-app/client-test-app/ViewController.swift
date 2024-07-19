//
//  ViewController.swift
//  client-test-app
//
//  Created by Abhishek Ravi on 18/07/24.
//

import UIKit
import auth_library

class ViewController: UIViewController {

    let authService = AuthenticationService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        authService.login("google_type")
    }

}

