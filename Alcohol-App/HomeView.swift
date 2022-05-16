//
//  HomeView.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
        let customBrown = Color(red: 0.85, green: 0.66, blue: 0.41)
        let customgray = Color(red: 0.89, green: 0.87, blue: 0.71)
        let customOlive = Color(red: 0.81, green: 0.80, blue: 0.08)
            ScrollView{
            VStack{
                Text("Beer of the Day")
                    .font(.title).bold()
                    .foregroundColor(.white)
                    .shadow(radius: 20)
            }
            .frame(width: 350, height: 200)
            .background(customBrown)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            .shadow(color: customBrown.opacity(0.3), radius: 20, x: 0, y: 10)
            .padding(10)
                VStack{
                    Text("Friend Leaderboard")
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                }
                .frame(width: 300, height: 400)
                .background(customgray)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customgray.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
                VStack{
                    Text("Cloest Next Badge")
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                }
                .frame(width: 270, height: 200)
                .background(customOlive)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customOlive.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
                VStack{
                    Text("Popular Beer in your location")
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                }
                .frame(width: 330, height: 300)
                .background(customgray)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customgray.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
        }
            .frame(maxWidth: .infinity)
            .background(customGreen)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
