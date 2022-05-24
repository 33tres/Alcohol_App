//
//  Toggle.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/19/22.
//

import Foundation

struct Toggle{
    var drink_toggle: Bool
    var beer_toggle: Bool
    var cider_toggle: Bool
    var wine_toggle: Bool
    var whiskey_toggle: Bool
    var gin_toggle: Bool
    var rum_toggle: Bool
    var vodka_toggle: Bool
    var tequila_toggle: Bool
    var specialty_toggle: Bool
    
    var drink_string: String
    var drink_array_num: Int
    
    init(){
        drink_toggle = true
        beer_toggle = false
        cider_toggle = false
        wine_toggle = false
        whiskey_toggle = false
        gin_toggle = false
        rum_toggle = false
        vodka_toggle = false
        tequila_toggle = false
        specialty_toggle = false
        
        drink_string = "Drinks"
        drink_array_num = 0
    }
    
    mutating func every_toggle_false(){
        drink_toggle = false
        beer_toggle = false
        cider_toggle = false
        wine_toggle = false
        whiskey_toggle = false
        gin_toggle = false
        rum_toggle = false
        vodka_toggle = false
        tequila_toggle = false
        specialty_toggle = false
    }
    
    mutating func toggle_drink(){
        every_toggle_false()
        drink_toggle = true
        drink_string = "Drinks"
        drink_array_num = 0
    }
    
    mutating func toggle_beer(){
        every_toggle_false()
        beer_toggle = true
        drink_string = "Beers"
        drink_array_num = 1
    }
    
    mutating func toggle_cider(){
        every_toggle_false()
        cider_toggle = true
        drink_string = "Ciders"
        drink_array_num = 9
    }
    
    mutating func toggle_wine(){
        every_toggle_false()
        wine_toggle = true
        drink_string = "Wines"
        drink_array_num = 10
    }
    
    mutating func toggle_whiskey(){
        every_toggle_false()
        whiskey_toggle = true
        drink_string = "Whiskeys"
        drink_array_num = 17
    }
    
    mutating func toggle_gin(){
        every_toggle_false()
        gin_toggle = true
        drink_string = "Gins"
        drink_array_num = 28
    }
    
    mutating func toggle_rum(){
        every_toggle_false()
        rum_toggle = true
        drink_string = "Rums"
        drink_array_num = 35
    }
    
    mutating func toggle_vodka(){
        every_toggle_false()
        vodka_toggle = true
        drink_string = "Vodkas"
        drink_array_num = 42
    }
    
    mutating func toggle_tequila(){
        every_toggle_false()
        tequila_toggle = true
        drink_string = "Tequilas"
        drink_array_num = 46
    }
    
    mutating func toggle_specialty(){
        every_toggle_false()
        specialty_toggle = true
        drink_string = "Specialties"
        drink_array_num = 53
    }
}
