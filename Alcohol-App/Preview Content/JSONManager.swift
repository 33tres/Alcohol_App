//
//  JSONManager.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/20/22.
//

import Foundation


struct Drink: Codable {
    let name, description, history, distilery: String
    let id: Int

    enum CodingKeys: String, CodingKey {
        case name
        case description = "description"
        case history
        case distilery
        case id = "ID"
    }
    
    static let allDrinks: [Drink] = Bundle.main.decode(file: "Drinks.json")
    static let sampleDrink: Drink = allDrinks[0]
}

struct User: Codable {
    let username: String
    let ID: Int
    let numDrinksArray: [Int]
    let drinkIDsArray: [Int]
    let friendIDsArray: [Int]

    enum CodingKeys: String, CodingKey {
        case username
        case ID
        case numDrinksArray = "num_drinks_array"
        case drinkIDsArray = "drink_IDs_array"
        case friendIDsArray = "friend_IDs_array"
    }
    
    static let allUsers: [User] = Bundle.main.decode(file: "Users.json")
    static let sampleUser: User = allUsers[0]
}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in project!")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) in project!")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) in project!")
        }
        
        return loadedData
    }
}
