//
//  GoogleAuthAdapter.swift
//  AdapterPatternd
//
//  Created by Evgeniy Ryshkov on 25/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

class GoogleAuthAdapter: AuthService {
    private var authenticator = GoogleAuth()
    
    public func login(email: String,
               password: String,
               success: @escaping (User, Token) -> Void,
               failure: @escaping (Error?) -> Void) {
        
        authenticator.login(email: email, password: password) { (currentUser, error) in
            guard let currentUser = currentUser else {
                failure(error)
                return
            }
            
            let user = User(email: currentUser.email, password: currentUser.password)
            let token = Token(value: currentUser.token)
            success(user, token)
            
        }
    }
    
}
