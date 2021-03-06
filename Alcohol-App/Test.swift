//
//  Test.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/23/22.
//

import SwiftUI


struct Test: View {
    
    var drinksArray: [Drink] = Drink.allDrinks
    var usersArray: [User] = User.allUsers
 
   let drinks = ["Budweiser", "Angry Orchard", "More Alc Names", "Literally Feces"]
    
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            List{
                ForEach (drinksArray) { drinksArray in
                Text(drinksArray.name)
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Search for a Drink!")
        }
    }
}

/*var results : [String] {
    if searchText.isEmpty{
        return drinks
    } else{
        return drinks.filter{ $0.contains(searchText)}
    }
}
 
 (drinksArray[0].name, id: \.self){drink in
     NavigationLink(destination: Text(drink)){
         Text(drink)*/


struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
