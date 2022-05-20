//
//  ContentView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    private var drinksArray: [Drink] = Drink.allDrinks
    private var usersArray: [User] = User.allUsers
    var body: some View {
        TabView{
            HomeView()
                .tabItem(){
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem(){
                    Image(systemName: "magnifyingglass")
                }
            FriendsView()
                .tabItem(){
                    Image(systemName: "person.3")
                }
            ProfileView()
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
