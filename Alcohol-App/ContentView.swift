//
//  ContentView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var Search_view = false
        if (Search_view == true){
            SearchView()
        }
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.brown, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Button {
                        Search_view = true
                    } label: {
                        Image(systemName: "globe")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 125, height: 125)
                            .padding(30)
                    }

                    HStack{
                        Image(systemName: "person.3")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 125, height: 125)
                            .padding(30)
                    }
                }
                HStack{
                    Image(systemName: "bolt.horizontal.circle")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .padding(100)
                }
                HStack{
                    Image(systemName: "house")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                        .padding(15)
                    Image(systemName: "magnifyingglass")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                        .padding(15)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
