//
//  Drink_View.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/24/22.
//

import SwiftUI

struct Drink_View: View {
    var current_Drink: Drink
    var current_User: User
    
    let customgray = Color(red: 0.85, green: 0.85, blue: 0.85)
    let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
    
    var body: some View {
        ScrollView{
            ZStack{
        VStack{
            Text("\(current_Drink.name)")
            .font(.system(size: 30))
            .font(.title).bold()
            .padding(.top)
            .padding(.bottom)
            .foregroundColor(.black)
            Divider().frame(width: 500,height: 3).background(Color.black)
            VStack{
                HStack{
                    Spacer()
                    Image("\(current_Drink.name)")
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
                            Text("\(current_Drink.brand)")
                            .foregroundColor(.black)
                            Spacer()
                        }
                        .background(customgray)
                        HStack{
                            Text("Catigory: ")
                                .foregroundColor(.black)
                                .padding()
                            Text("\(current_Drink.category)")
                                .foregroundColor(.black)
                            Spacer()
                        }
                        HStack{
                            Text("ABV:")
                            .foregroundColor(.black)
                            .padding()
                            let rounded_abv = String(format: "%.1f", current_Drink.abv)
                            Text("\(rounded_abv)")
                            .foregroundColor(.black)
                            Spacer()
                            }
                        .background(customgray)
                        }
                    }
                }
                Text("\(current_Drink.description)")
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
    static let tempDrink = Drink(
    name: "Bud Light",
    category: "Lager",
    description: "Introduced in 1982, Bud Light is a premium light lager with a superior drinkability that has made it the best-selling and most popular beer in the United States. Bud Light is brewed using a blend of premium aroma hop varieties, both American-grown and imported, and a combination of barley malts and rice. The light-bodied beer features a fresh, clean and subtle hop aroma, delicate malt sweetness and a crisp finish that delivers the ultimate refreshment.",
    abv: 4.2,
    brand: "Bud Light",
    id: 1118400000
    )
    static let tempUser = User(
        username: "bctwohander",
        email: "bctwohander@gmail.com",
        ID: 0,
        numDrinksArray: [40, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         5, 0, 3, 1, 1, 0, 0, 20, 10, 2,
                         3, 1, 1, 2, 1, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 10, 5, 5, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 5, 1, 2, 1, 1, 0],
        drinkIDsArray: [],
        friendIDsArray: [0, 1, 2],
        badgesArray: []
        )
    
    static var previews: some View {
        Drink_View(current_Drink: tempDrink, current_User: tempUser)
    }
}
