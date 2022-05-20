//
//  ProfileView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ProfileView: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var usersArray: [User] = User.allUsers
    
    @State private var value: CGFloat = 0.0
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
                            Text("Username")
                                .font(.system(size: 15))
                                .font(.title).bold()
                                .foregroundColor(.white)
                                .shadow(radius: 20)
                                .padding(5)
                                VStack{
                                Text("Email Address")
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
                                }
                            }
                        }
                    }
                
                    
                HStack{
                   Text("0%")
                    Slider(value: $value)
                    Text("100%")
                    }
                    .padding()
                    ZStack{
                        VStack{
                            HStack{
                                Spacer()
                                Menu {
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
                            }
                            Spacer()
                        }
                        Circle()
                        .stroke(Color.gray, lineWidth : 20)
                        .opacity(0.3)
                        .padding()
                        .padding()
                        if !toggle.beer_toggle{
                            Circle()
                            .trim(from:0, to: value)
                            .stroke(Color.black, lineWidth: 20)
                            .rotationEffect(.degrees(-90))
                            .padding()
                            .padding()
                        }
          
                }
                .frame(width: 300, height: 500)
                    .background(customRed)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                    .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                    .padding(10)
                    .overlay(Text("Drink 10 \(alcohol_type) \(Int(value*10))/10").foregroundColor(.white)).font(.title2)
                   
                    }
                
               
            .frame(maxWidth: .infinity)
        .background(customGreen)
           
            }
        }
        }
 
        }
       
        



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
