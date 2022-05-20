//
//  SearchView.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//

import SwiftUI

struct SearchView: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var usersArray: [User] = User.allUsers
    
    @State private var searchText = ""
    var body: some View {
        NavigationView{
                      Text("Searching for \(searchText)")
                          .searchable(text: $searchText)
                          .navigationTitle("Search for a Drink!")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
    
    
    
