//
//  GoogleAuth.swift
//  AdapterPatternd
//
//  Created by Evgeniy Ryshkov on 25/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

public struct GoogleUser {
    public var email: String
    public var password: String
    public var token: String
}

public class GoogleAuth {
    public func login(email: String,
                      password: String,
                      completion: @escaping (GoogleUser?, Error?) -> Void) {
        let token = "google-token-dkforp5"
        
        let user = GoogleUser(email: email, password: password, token: token)
        
        completion(user, nil)
    }
}
