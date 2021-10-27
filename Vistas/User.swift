//
//  User.swift
//  Vistas
//
//  Created by alumnos on 27/10/21.
//

import Foundation

class User: Codable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
