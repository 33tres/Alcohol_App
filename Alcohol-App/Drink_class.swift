//
//  Drink_struct.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/18/22.
//

import Foundation

class Drink{
    var name: String
    var description: String
    var history: String
    
    init(name: String, description: String, history: String){
        self.name = name
        self.description = description
        self.history = history
    }
};

class Beer: Drink{
    
    
}

class Ipa: Beer{
    
    
}




