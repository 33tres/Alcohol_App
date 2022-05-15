//
//  ContentView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.brown, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            HStack{
                Image(systemName: "globe.asia.australia")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: -225)
                    .frame(width: 125, height: 125)
                    .padding()
                HStack{
                    Image(systemName: "person.3")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(y: -225)
                        .frame(width: 125, height: 1250)
                        .padding()
                }
            }
            HStack{
                Image(systemName: "hand.thumbsup")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: 50)
                    .frame(width: 125, height: 125)
                    .padding()
            }
            HStack{
                Image(systemName: "house")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: 350)
                    .frame(width: 75, height: 75)
                    .padding()
                HStack{
                    Image(systemName: "magnifyingglass")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(y: 350)
                        .frame(width: 75, height: 75)
                        .padding()
                    HStack{
                        Image(systemName: "person")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .offset(y: 350)
                            .frame(width: 75, height: 75)
                            .padding()
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
