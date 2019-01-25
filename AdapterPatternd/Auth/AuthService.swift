//
//  AuthService.swift
//  AdapterPatternd
//
//  Created by Evgeniy Ryshkov on 25/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let value: String
}

public protocol AuthService {
    func login(email: String,
               password: String,
               success: @escaping (User, Token) -> Void,
               failure: @escaping (Error?) -> Void)
}
