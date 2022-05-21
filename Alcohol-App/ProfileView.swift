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
                            } // menu
                            Spacer()
                        } // hstack
                        Circle()
                        .stroke(Color.gray, lineWidth : 20)
                        .opacity(0.3)
                        .padding()
                        .padding()
                        
                        // All of the code for the different drink toggles, very long
                        if toggle.drink_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[0]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Drinks \(current_user.numDrinksArray[0])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.beer_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[1]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Beers \(current_user.numDrinksArray[1])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.cider_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[9]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Ciders \(current_user.numDrinksArray[9])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.wine_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[10]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Wines \(current_user.numDrinksArray[10])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.whiskey_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[19]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Whiskeys \(current_user.numDrinksArray[19])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.gin_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[28]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Gins \(current_user.numDrinksArray[28])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.rum_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[33]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Rums \(current_user.numDrinksArray[33])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.vodka_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[46]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Vodkas \(current_user.numDrinksArray[46])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.tequila_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[51]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Tequilas \(current_user.numDrinksArray[51])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        if toggle.specialty_toggle{
                            Circle()
                            .trim(from:0, to: CGFloat(current_user.numDrinksArray[58]) / 10)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                            Text("Try 10 Specialty Drinks \(current_user.numDrinksArray[58])/10")
                            .font(.system(size: 20))
                            .font(.title).bold()
                        }
                        } // vstack
                        .frame(width: 300, height: 500)
                        .background(customRed)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                        .padding(10)
                        // .overlay(Text("Drink 10 \(alcohol_type) \(current_user))/10").foregroundColor(.white)).font(.title2)
                        } // zstack
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
