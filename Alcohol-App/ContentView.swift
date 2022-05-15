//
//  ContentView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.brown, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        NavigationLink(destination: SearchView()){
                            Image(systemName: "globe")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 125, height: 125)
                            .padding(30)
                        }
                        HStack{
                            NavigationLink(destination: SearchView()){
                                Image(systemName: "person.3")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 125, height: 125)
                                .padding(30)
                            }
                        }
                    }
                    HStack{
                        NavigationLink(destination: SearchView()){
                            Image(systemName: "bolt.horizontal.circle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                            .padding(60)
                        }
                    }
                    HStack{
                        NavigationLink(destination: SearchView()){
                            Image(systemName: "house")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .padding(15)
                        }
                        NavigationLink(destination: SearchView()){
                            Image(systemName: "magnifyingglass")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .padding(15)
                        }
                        NavigationLink(destination: ProfileView()){
                            Image(systemName: "person")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .padding(15)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
