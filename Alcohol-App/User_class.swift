//
//  User_class.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/18/22.
//

import Foundation


class User{
    var name: String
    var username: String
    var num_drinks_array: [Int]
    
    init(name: String, username: String){
        self.name = name
        self.username = username
        self.num_drinks_array = Array(repeating: 0, count: 58)
    }
};
