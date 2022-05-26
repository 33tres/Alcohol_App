//
//  ContentView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var current_User = User.allUsers[0]
        
    var body: some View {
        TabView{
            HomeView(currentUser: current_User)
                .tabItem(){
                    Image(systemName: "house")
                }
            SearchView(currentUser: current_User)
                .tabItem(){
                    Image(systemName: "magnifyingglass")
                }
            FriendsView(currentUser: current_User)
                .tabItem(){
                    Image(systemName: "person.3")
                }
            ProfileView(currentUser: current_User)
                .tabItem(){
                    Image(systemName: "person.circle")
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
