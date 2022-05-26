//
//  ContentView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var usersArray: [User] = User.allUsers
    var current_User = User.allUsers[1]
        
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
