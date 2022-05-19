//
//  User_class.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/18/22.
//

import Foundation


class User{
    var username: String
    var num_drinks_array: [Int]
    var drink_IDs_array : [Int]
    
    init(username: String){
        self.username = username
        self.num_drinks_array = Array(repeating: 0, count: 60)
        self.drink_IDs_array = Array()
    }
};
