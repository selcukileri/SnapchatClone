//
//  UserSingleton.swift
//  SnapchatClone
//
//  Created by Selçuk İleri on 4.11.2023.
//

import Foundation

class UserSingleton {
    static let sharedUserInfo = UserSingleton()
    var email = ""
    var username = ""
    
    private init(email: String = "", username: String = "") {
        self.email = email
        self.username = username
    }
    
    
    
}
