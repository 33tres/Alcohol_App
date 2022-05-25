//
//  Drink_View.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/24/22.
//

import SwiftUI

struct Drink_View: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var usersArray: [User] = User.allUsers
    
    let customgray = Color(red: 0.85, green: 0.85, blue: 0.85)
    let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
    
    var body: some View {
        ScrollView{
            ZStack{
        VStack{
            Text("\(drinksArray[0].name)")
            .font(.system(size: 30))
            .font(.title).bold()
            .padding(.top)
            .padding(.bottom)
            .foregroundColor(.black)
            Divider().frame(width: 500,height: 3).background(Color.black)
            VStack{
                HStack{
                    Spacer()
                    Image("Bud-Light")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 150)
                    .padding()
                    .border(Color.black, width: 3)
                    HStack{
                        VStack{
                        HStack{
                            Text("Brand: ")
                                .padding()
                                .foregroundColor(.black)
                            Text("\(drinksArray[0].brand)")
                            .foregroundColor(.black)
                            Spacer()
                        }
                        .background(customgray)
                        HStack{
                            Text("Catigory: ")
                                .foregroundColor(.black)
                                .padding()
                            Text("Lager")
                                .foregroundColor(.black)
                            Spacer()
                        }
                        HStack{
                            Text("ABV:")
                            .foregroundColor(.black)
                            .padding()
                            Text("4.2")
                            .foregroundColor(.black)
                            Spacer()
                            }
                        .background(customgray)
                        }
                    }
                }
                Text("\(drinksArray[0].description)")
                .font(.system(size: 15))
                .font(.title).bold()
                .foregroundColor(.black)
                .shadow(radius: 20)
                .padding(10)
            }
            Divider()
            VStack{
                HStack{
                    Text("Rating")
                    .font(.system(size: 30))
                    .font(.title).bold()
                    .foregroundColor(.black)
                    Image(systemName: "plus")
                }
                VStack{
                    HStack{
                    Image(systemName: "star")
                        .foregroundColor(.black)
                    Image(systemName: "star")
                        .foregroundColor(.black)
                    Image(systemName: "star")
                        .foregroundColor(.black)
                    Image(systemName: "star")
                        .foregroundColor(.black)
                    Image(systemName: "star")
                        .foregroundColor(.black)
                    }
                    .padding(3)
                }
            }
            Divider()
            HStack{
                Text("Tried It!")
                    .font(.system(size: 30))
                    .font(.title).bold()
                    .foregroundColor(.black)
                    .frame(width: 250, height: 150)
                    .background(customGreen)
                    .cornerRadius(30)
                    .shadow(color: customGreen.opacity(0.2), radius: 15, x: 0, y: 2)
                    .padding()
            }
            Spacer()
        }
        }
            .frame(width: 380)
        }
    }
}

struct Drink_View_Previews: PreviewProvider {
    static var previews: some View {
        Drink_View()
    }
}
