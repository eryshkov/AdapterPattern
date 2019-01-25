//
//  ViewController.swift
//  AdapterPatternd
//
//  Created by Evgeniy Ryshkov on 25/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var authService: AuthService = TwitterAuthAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUser(email: "user@example.com", password: "fjpr95")
    }

    func createUser(email: String, password: String) {
        authService.login(email: email, password: password, success: { (user, token) in
            print("Auth succeeded: \(user.email), \(token.value)")
        }) { (error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }

}

