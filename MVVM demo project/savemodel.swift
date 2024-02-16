//
//  savemodel.swift
//  MVVM demo project
//
//  Created by Ardhas Dev on 16/02/24.
//

import Foundation

class User {
    
    var id: Int
    var name: String
    var email: String
    var phone : String
    
    init(id: Int, name: String, email: String,phone: String) {
        self.id = id
        self.name = name
        self.email = email
        self.phone = phone
    }
}
