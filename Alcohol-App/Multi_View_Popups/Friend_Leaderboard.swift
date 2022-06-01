//
//  Friend_Leaderboard.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/22/22.
//

import SwiftUI

struct Friend_Leaderboard: View {
    var current_User: User
    var allUsers = User.allUsers
    @State var toggle = Toggle()
    @State var alcohol_type = "Drinks"
    
    var body: some View {
        ScrollView{
            ZStack{
                VStack{
                    HStack{
                    Text("Friend Leaderboards")
                    .font(.system(size: 30))
                    .font(.title).bold()
                    .padding(.top)
                    .padding(.bottom)
                    .foregroundColor(.black)
                        Menu {
                            // Button code for the top button
                            Button{
                                toggle.toggle_drink()
                                alcohol_type = "Drinks"
                            }label:{
                                Text("Drink")
                            }
                            Button{
                                toggle.toggle_beer()
                                alcohol_type = "Beers"
                            }label:{
                                Text("Beer")
                            }
                            Button{
                                toggle.toggle_cider()
                                alcohol_type = "Ciders"
                            }label:{
                                Text("Cider")
                            }
                            Button{
                                toggle.toggle_wine()
                                alcohol_type = "Wines"
                            }label:{
                                Text("Wine")
                            }
                            Button{
                                toggle.toggle_whiskey()
                                alcohol_type = "Whiskeys"
                            }label:{
                                Text("Whiskey")
                            }
                            Button{
                                toggle.toggle_gin()
                                alcohol_type = "Gins"
                            }label:{
                                Text("Gin")
                            }
                            Button{
                                toggle.toggle_rum()
                                alcohol_type = "Rums"
                            }label:{
                                Text("Rum")
                            }
                            Button{
                                toggle.toggle_vodka()
                                alcohol_type = "Vodkas"
                            }label:{
                                Text("Vodka")
                            }
                            Button{
                                toggle.toggle_tequila()
                                alcohol_type = "Tequilas"
                            }label:{
                                Text("Tequila")
                            }
                            Button{
                                toggle.toggle_specialty()
                                alcohol_type = "Specialties"
                            }label:{
                                Text("Specialty")
                            }
                        }label: {
                            Image(systemName: "bag.fill")
                            
                        }
                        .padding()
                        Menu{
                            // Sub-drink toggles

                            // Beer Toggles
                            if toggle.beer_toggle{
                                Button{
                                    toggle.drink_string = "Ales"
                                    toggle.drink_array_num = 2
                                }label:{
                                    Text("Ale")
                                }
                                Button{
                                    toggle.drink_string = "Lagers"
                                    toggle.drink_array_num = 3
                                }label:{
                                    Text("Lager")
                                }
                                Button{
                                    toggle.drink_string = "Porters"
                                    toggle.drink_array_num = 4
                                }label:{
                                    Text("Porter")
                                }
                                Button{
                                    toggle.drink_string = "Stouts"
                                    toggle.drink_array_num = 5
                                }label:{
                                    Text("Stout")
                                }
                                Button{
                                    toggle.drink_string = "IPAs"
                                    toggle.drink_array_num = 6
                                }label:{
                                    Text("IPA")
                                }
                                Button{
                                    toggle.drink_string = "Wheat Beers"
                                    toggle.drink_array_num = 7
                                }label:{
                                    Text("Wheat Beer")
                                }
                                Button{
                                    toggle.drink_string = "Pilsners"
                                    toggle.drink_array_num = 8
                                }label:{
                                    Text("Pilsner")
                                }
                            }
                            // Wine Toggles
                            
                            if toggle.wine_toggle{
                                Button{
                                    toggle.drink_string = "Red Wines"
                                    toggle.drink_array_num = 11
                                }label:{
                                    Text("Red Wine")
                                }
                                Button{
                                    toggle.drink_string = "White Wines"
                                    toggle.drink_array_num = 12
                                }label:{
                                    Text("White Wine")
                                }
                                Button{
                                    toggle.drink_string = "Rosé Wines"
                                    toggle.drink_array_num = 13
                                }label:{
                                    Text("Rosé Wine")
                                }
                                Button{
                                    toggle.drink_string = "Sparkling Wines"
                                    toggle.drink_array_num = 14
                                }label:{
                                    Text("Sparkling Wine")
                                }
                                Button{
                                    toggle.drink_string = "Dessert Wines"
                                    toggle.drink_array_num = 15
                                }label:{
                                    Text("Dessert Wine")
                                }
                                Button{
                                    toggle.drink_string = "Fortified Wines"
                                    toggle.drink_array_num = 16
                                }label:{
                                    Text("Fortified Wine")
                                }
                            }
                            // Whiskey Toggles
                            
                            if (toggle.whiskey_toggle){
                                Button{
                                    toggle.drink_string = "Bourbons"
                                    toggle.drink_array_num = 18
                                }label:{
                                    Text("Bourbon")
                                }
                                Button{
                                    toggle.drink_string = "Ryes"
                                    toggle.drink_array_num = 19
                                }label:{
                                    Text("Rye")
                                }
                                Button{
                                    toggle.drink_string = "Scotches"
                                    toggle.drink_array_num = 20
                                }label:{
                                    Text("Scotch")
                                }
                                Button{
                                    toggle.drink_string = "Irish Whiskeys"
                                    toggle.drink_array_num = 21
                                }label:{
                                    Text("Irish Whiskey")
                                }
                                Button{
                                    toggle.drink_string = "Japanese Whiskeys"
                                    toggle.drink_array_num = 22
                                }label:{
                                    Text("Japanese Whiskey")
                                }
                                Button{
                                    toggle.drink_string = "Canadian Whiskeys"
                                    toggle.drink_array_num = 23
                                }label:{
                                    Text("Canandian Whiskey")
                                }
                                Button{
                                    toggle.drink_string = "Tennessee Whiskeys"
                                    toggle.drink_array_num = 24
                                }label:{
                                    Text("Tennessee Whiskey")
                                }
                                Button{
                                    toggle.drink_string = "Blended Whiskeys"
                                    toggle.drink_array_num = 25
                                }label:{
                                    Text("Blended Whiskey")
                                }
                                Button{
                                    toggle.drink_string = "Flavored Whiskeys"
                                    toggle.drink_array_num = 26
                                }label:{
                                    Text("Flavored Whiskey")
                                }
                                Button{
                                    toggle.drink_string = "Single Malt Whiskeys"
                                    toggle.drink_array_num = 27
                                }label:{
                                    Text("Single Malt Whiskey")
                                }
                            }
                            // Gin Toggles
                            
                            if toggle.gin_toggle{
                                Button{
                                    toggle.drink_string = "London Dry Gins"
                                    toggle.drink_array_num = 29
                                }label:{
                                    Text("London Dry")
                                }
                                Button{
                                    toggle.drink_string = "Moderns Gins"
                                    toggle.drink_array_num = 30
                                }label:{
                                    Text("Modern")
                                }
                                Button{
                                    toggle.drink_string = "Old Tom Gins"
                                    toggle.drink_array_num = 31
                                }label:{
                                    Text("Old Tom")
                                }
                                Button{
                                    toggle.drink_string = "Genevers"
                                    toggle.drink_array_num = 32
                                }label:{
                                    Text("Genever")
                                }
                                Button{
                                    toggle.drink_string = "Aged Gins"
                                    toggle.drink_array_num = 33
                                }label:{
                                    Text("Aged")
                                }
                                Button{
                                    toggle.drink_string = "Navy Strength Gins"
                                    toggle.drink_array_num = 34
                                }label:{
                                    Text("Navy Strength")
                                }
                            }
                            // Rum Toggles
                            
                            if toggle.rum_toggle{
                                Button{
                                    toggle.drink_string = "White Rums"
                                    toggle.drink_array_num = 36
                                }label:{
                                    Text("White Rum")
                                }
                                Button{
                                    toggle.drink_string = "Gold Rums"
                                    toggle.drink_array_num = 37
                                }label:{
                                    Text("Gold Rum")
                                }
                                Button{
                                    toggle.drink_string = "Dark Rums"
                                    toggle.drink_array_num = 38
                                }label:{
                                    Text("Dark Rum")
                                }
                                Button{
                                    toggle.drink_string = "Aged Rums"
                                    toggle.drink_array_num = 39
                                }label:{
                                    Text("Aged Rum")
                                }
                                Button{
                                    toggle.drink_string = "Spiced Rums"
                                    toggle.drink_array_num = 40
                                }label:{
                                    Text("Spiced Rum")
                                }
                                Button{
                                    toggle.drink_string = "Flavored Rums"
                                    toggle.drink_array_num = 41
                                }label:{
                                    Text("Flavored Rums")
                                }
                            }
                            // Vodka Toggles
                            
                            if toggle.vodka_toggle{
                                Button{
                                    toggle.drink_string = "Flavored Vodkas"
                                    toggle.drink_array_num = 43
                                }label:{
                                    Text("Flavored Vodka")
                                }
                                Button{
                                    toggle.drink_string = "Organic Vodkas"
                                    toggle.drink_array_num = 44
                                }label:{
                                    Text("Organic Vodka")
                                }
                                Button{
                                    toggle.drink_string = "Kosher Vodkas"
                                    toggle.drink_array_num = 45
                                }label:{
                                    Text("Kosher Vodka")
                                }
                            }
                            // Tequila Toggles
                            
                            if toggle.tequila_toggle{
                                Button{
                                    toggle.drink_string = "Blancos"
                                    toggle.drink_array_num = 47
                                }label:{
                                    Text("Blanco")
                                }
                                Button{
                                    toggle.drink_string = "Reposados"
                                    toggle.drink_array_num = 48
                                }label:{
                                    Text("Reposado")
                                }
                                Button{
                                    toggle.drink_string = "Añejos"
                                    toggle.drink_array_num = 49
                                }label:{
                                    Text("Añejo")
                                }
                                Button{
                                    toggle.drink_string = "Mezcals"
                                    toggle.drink_array_num = 50
                                }label:{
                                    Text("Mezcal")
                                }
                                Button{
                                    toggle.drink_string = "Gold Tequilas"
                                    toggle.drink_array_num = 51
                                }label:{
                                    Text("Gold Tequila")
                                }
                                Button{
                                    toggle.drink_string = "Flavored Tequilas"
                                    toggle.drink_array_num = 52
                                }label:{
                                    Text("Flavored Tequila")
                                }
                            }
                            // Specialty Toggles
                            
                            if toggle.specialty_toggle{
                                Button{
                                    toggle.drink_string = "Meads"
                                    toggle.drink_array_num = 54
                                }label:{
                                    Text("Mead")
                                }
                                Button{
                                    toggle.drink_string = "Sakes"
                                    toggle.drink_array_num = 55
                                }label:{
                                    Text("Sake")
                                }
                                Button{
                                    toggle.drink_string = "Brandys"
                                    toggle.drink_array_num = 56
                                }label:{
                                    Text("Brandy")
                                }
                                Button{
                                    toggle.drink_string = "Liqueurs"
                                    toggle.drink_array_num = 57
                                }label:{
                                    Text("Liqueur")
                                }
                                Button{
                                    toggle.drink_string = "Others"
                                    toggle.drink_array_num = 58
                                }label:{
                                    Text("Other")
                                }
                            }
                            
                        }label:{
                            Image(systemName: "person")
                        }
                    }
                    Divider().frame(width: 500,height: 3).background(Color.black)
                    VStack{
                        Text("Drink Type: \(toggle.drink_string)")
                            .font(.system(size: 20))
                            .font(.title).bold()
                            .foregroundColor(.black)
                        Divider()
                        VStack{
                            ForEach(current_User.friendIDsArray, id: \.self){ value in
                                HStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .aspectRatio(contentMode:.fit)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                HStack{
                                    Text("\(allUsers[value].username)")
                                        .font(.system(size: 22))
                                        .font(.title).bold()
                                        .foregroundColor(.black)
                                        .shadow(radius: 20)
                                        .padding()
                                    Spacer()
                                    HStack{
                                        Text("\(allUsers[value].numDrinksArray[toggle.drink_array_num])")
                                            .font(.system(size: 22))
                                            .font(.title).bold()
                                            .foregroundColor(.black)
                                            .shadow(radius: 20)
                                    }
                                    
                                }
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
            .frame(width: 380)
        }
    }
}

struct Friend_Leaderboard_Previews: PreviewProvider {
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
        Friend_Leaderboard(current_User: tempUser)
    }
}
