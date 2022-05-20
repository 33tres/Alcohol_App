//
//  ContentView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ContentView: View {
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
