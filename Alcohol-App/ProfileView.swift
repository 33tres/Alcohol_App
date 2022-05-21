//
//  ProfileView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ProfileView: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var current_user: User = User.allUsers[0]
    
    @State var toggle = Toggle()
    @State var alcohol_type = "Drinks"
    var body: some View {
        let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
        let customRed = Color(red: 0.71, green: 0.30, blue: 0.18)
        let customgray = Color(red: 0.89, green: 0.87, blue: 0.71)
        let customOlive = Color(red: 0.81, green: 0.80, blue: 0.08)
        
        VStack {
            HStack{
            ScrollView{

                    HStack{
                        Image(systemName: "person.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                        .padding(15)
                        .frame(width: 100, height: 100)
                        .background(customRed)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                        .padding(.trailing)
                        .padding(.trailing)
                        .padding(.trailing)
                        HStack{
                            VStack{
                                Text("\(current_user.username)")
                                .font(.system(size: 15))
                                .font(.title).bold()
                                .foregroundColor(.white)
                                .shadow(radius: 20)
                                .padding(5)
                                VStack{
                                    Text("\(current_user.email)")
                                    .font(.system(size: 15))
                                    .font(.title).bold()
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .padding(5)
                                }
                                VStack{
                                Text("Badge Display")
                                    .font(.system(size: 15))
                                    .font(.title).bold()
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .padding(5)
                                    .frame(width: 200, height: 50)
                                    .background(customRed)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                                    .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                                } // vstack
                            } //vstack
                        } // hstack
                    } // hstack
                
                    ZStack{
                        VStack{
                            HStack{
                                Spacer()
                                VStack{
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
                                            toggle.drink_array_num = 20
                                        }label:{
                                            Text("Bourbon")
                                        }
                                        Button{
                                            toggle.drink_string = "Ryes"
                                            toggle.drink_array_num = 21
                                        }label:{
                                            Text("Rye")
                                        }
                                        Button{
                                            toggle.drink_string = "Scotches"
                                            toggle.drink_array_num = 22
                                        }label:{
                                            Text("Scotch")
                                        }
                                        Button{
                                            toggle.drink_string = "Irish Whiskeys"
                                            toggle.drink_array_num = 23
                                        }label:{
                                            Text("Irish Whiskey")
                                        }
                                        Button{
                                            toggle.drink_string = "Japanese Whiskeys"
                                            toggle.drink_array_num = 24
                                        }label:{
                                            Text("Japanese Whiskey")
                                        }
                                        Button{
                                            toggle.drink_string = "Canadian Whiskeys"
                                            toggle.drink_array_num = 25
                                        }label:{
                                            Text("Canandian Whiskey")
                                        }
                                        Button{
                                            toggle.drink_string = "Tennessee Whiskeys"
                                            toggle.drink_array_num = 26
                                        }label:{
                                            Text("Tennessee Whiskey")
                                        }
                                        Button{
                                            toggle.drink_string = "Blended Whiskeys"
                                            toggle.drink_array_num = 27
                                        }label:{
                                            Text("Blended Whiskey")
                                        }
                                    }
                                    // Gin Toggles
                                    
                                    if toggle.gin_toggle{
                                        Button{
                                            toggle.drink_string = "London Drys"
                                            toggle.drink_array_num = 29
                                        }label:{
                                            Text("London Dry")
                                        }
                                        Button{
                                            toggle.drink_string = "Plymouths"
                                            toggle.drink_array_num = 30
                                        }label:{
                                            Text("Plymouth")
                                        }
                                        Button{
                                            toggle.drink_string = "Old Toms"
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
                                    }
                                    // Rum Toggles
                                    
                                    if toggle.rum_toggle{
                                        Button{
                                            toggle.drink_string = "White Rums"
                                            toggle.drink_array_num = 34
                                        }label:{
                                            Text("White Rum")
                                        }
                                        Button{
                                            toggle.drink_string = "Gold or Pale Rums"
                                            toggle.drink_array_num = 35
                                        }label:{
                                            Text("Gold or Pale Rum")
                                        }
                                        Button{
                                            toggle.drink_string = "Dark Rums"
                                            toggle.drink_array_num = 36
                                        }label:{
                                            Text("Dark Rum")
                                        }
                                        Button{
                                            toggle.drink_string = "Black Rums"
                                            toggle.drink_array_num = 37
                                        }label:{
                                            Text("Black Rum")
                                        }
                                        Button{
                                            toggle.drink_string = "Navy Rums"
                                            toggle.drink_array_num = 38
                                        }label:{
                                            Text("Navy Rum")
                                        }
                                        Button{
                                            toggle.drink_string = "Cachaças"
                                            toggle.drink_array_num = 39
                                        }label:{
                                            Text("Cachaça")
                                        }
                                        Button{
                                            toggle.drink_string = "Aguardiente"
                                            toggle.drink_array_num = 40
                                        }label:{
                                            Text("Aguardiente")
                                        }
                                        Button{
                                            toggle.drink_string = "Flavored and Spiced Rums"
                                            toggle.drink_array_num = 41
                                        }label:{
                                            Text("Flavored and Spiced")
                                        }
                                        Button{
                                            toggle.drink_string = "Other"
                                            toggle.drink_array_num = 42
                                        }label:{
                                            Text("Other")
                                        }
                                    }
                                    // Vodka Toggles
                                    
                                    if toggle.vodka_toggle{
                                        Button{
                                            toggle.drink_string = "Plain Vodkas"
                                            toggle.drink_array_num = 47
                                        }label:{
                                            Text("Plain Vodka")
                                        }
                                        Button{
                                            toggle.drink_string = "Flavored Vodkas"
                                            toggle.drink_array_num = 48
                                        }label:{
                                            Text("Flavored Vodka")
                                        }
                                        Button{
                                            toggle.drink_string = "Fruit Vodkas"
                                            toggle.drink_array_num = 49
                                        }label:{
                                            Text("Fruit Vodka")
                                        }
                                        Button{
                                            toggle.drink_string = "Grain Vodkas"
                                            toggle.drink_array_num = 50
                                        }label:{
                                            Text("Grain Vodka")
                                        }
                                    }
                                    // Tequila Toggles
                                    
                                    if toggle.tequila_toggle{
                                        Button{
                                            toggle.drink_string = "Blancos"
                                            toggle.drink_array_num = 52
                                        }label:{
                                            Text("Blanco")
                                        }
                                        Button{
                                            toggle.drink_string = "Reposados"
                                            toggle.drink_array_num = 53
                                        }label:{
                                            Text("Reposado")
                                        }
                                        Button{
                                            toggle.drink_string = "Jovens"
                                            toggle.drink_array_num = 54
                                        }label:{
                                            Text("Joven")
                                        }
                                        Button{
                                            toggle.drink_string = "Añejos"
                                            toggle.drink_array_num = 55
                                        }label:{
                                            Text("Añejo")
                                        }
                                        Button{
                                            toggle.drink_string = "Mixtos"
                                            toggle.drink_array_num = 56
                                        }label:{
                                            Text("Mixto")
                                        }
                                    }
                                    // Specialty Toggles
                                    
                                    if toggle.specialty_toggle{
                                        Button{
                                            toggle.drink_string = "Meads"
                                            toggle.drink_array_num = 17
                                        }label:{
                                            Text("Mead")
                                        }
                                        Button{
                                            toggle.drink_string = "Sakes"
                                            toggle.drink_array_num = 18
                                        }label:{
                                            Text("Sake")
                                        }
                                        Button{
                                            toggle.drink_string = "Brandys"
                                            toggle.drink_array_num = 57
                                        }label:{
                                            Text("Brandy")
                                        }
                                        Button{
                                            toggle.drink_string = "Other"
                                            toggle.drink_array_num = 59
                                        }label:{
                                            Text("Other")
                                        }
                                    }
                                    
                                    
                                }label:{
                                    Image(systemName: "person")
                                }
                                }
                            } // menu
                            Spacer()
                        } // hstack
                        Circle()
                        .stroke(Color.gray, lineWidth : 20)
                        .opacity(0.3)
                        .padding()
                        .padding()
                        Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[toggle.drink_array_num]) / 10)
                        .stroke(Color.black, lineWidth: 20)
                        .rotationEffect(.degrees(-90))
                        .padding()
                        .padding()
                        Text("Try 10 \(toggle.drink_string) \(current_user.numDrinksArray[toggle.drink_array_num])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                            .foregroundColor(.black)
                            .shadow(radius: 20)
                            .padding(45)
                        } // vstack
                        .frame(width: 300, height: 400)
                        .background(customgray)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        .shadow(color: customgray.opacity(0.3), radius: 20, x: 0, y: 10)
                        .padding(10)
                VStack{
                    Text("All Badges")
                    .font(.system(size: 30))
                    .font(.title).bold()
                    .foregroundColor(.white)
                    .shadow(radius: 20)
                    .padding(5)
                }
                .frame(width: 300, height: 200)
                .background(customOlive)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customOlive.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
                VStack{
                    Text("All Drinks")
                    .font(.system(size: 30))
                    .font(.title).bold()
                    .foregroundColor(.white)
                    .shadow(radius: 20)
                    .padding(5)
                }
                .frame(width: 300, height: 200)
                .background(customRed)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
                    } // scroll view
                .frame(maxWidth: .infinity)
                .background(customGreen)
            } // hstack
        } // vstack
    } // var body: some view
} // Profile View
       
        



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
