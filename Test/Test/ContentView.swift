//
//  ContentView.swift
//  Test
//
//  Created by David Harrell on 5/15/22.
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
                    Image(systemName: "car")
                }
            ProfileView()
                .tabItem(){
                    Image(systemName: "mic")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
