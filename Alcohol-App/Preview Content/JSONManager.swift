//
//  JSONManager.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/20/22.
//

import Foundation


struct Drink: Codable, Identifiable {
    let name: String
    let category: String
    let description: String
    let abv: Float
    let brand: String
    let id: Int

    enum CodingKeys: String, CodingKey {
        case name
        case category
        case description = "description"
        case abv
        case brand
        case id = "ID"
    }
    
    static let allDrinks: [Drink] = Bundle.main.decode(file: "Drinks.json")
    static let sampleDrink: Drink = allDrinks[0]
  
}

struct User: Codable {
    let username: String
    let email: String
    let ID: Int
    let numDrinksArray: [Int]
    let drinkIDsArray: [Int]
    let friendIDsArray: [Int]
    let badgesArray: [Int]

    enum CodingKeys: String, CodingKey {
        case username
        case email
        case ID
        case numDrinksArray = "num_drinks_array"
        case drinkIDsArray = "drink_IDs_array"
        case friendIDsArray = "friend_IDs_array"
        case badgesArray = "badges_Array"
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
