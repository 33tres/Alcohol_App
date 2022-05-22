//
//  FriendsView.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//

import SwiftUI

struct FriendsView: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var usersArray: [User] = User.allUsers
    
    @State var friend_leaderboard_popup = false
    @State var friend_list_popup = false
    
    let data = (1...50).map {
        "Friend \($0)" }
    let image =  Image(systemName: "person")
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
    let customBrown = Color(red: 0.85, green: 0.66, blue: 0.41)
    let customgray = Color(red: 0.89, green: 0.87, blue: 0.71)
    let customOlive = Color(red: 0.81, green: 0.80, blue: 0.08)
    let customRed = Color(red: 0.71, green: 0.30, blue: 0.18)

    var body: some View {
        ScrollView {
            VStack{
                HStack{
                    Button{
                        friend_leaderboard_popup = true
                    }label:{
                    ScrollView {
                        
                        
                        // leaderboards
                        HStack{
                            Text("Leaderboards")
                                .font(.system(size: 16))
                                .font(.title).bold()
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.bottom)

                            HStack{
                                Image(systemName: "bag.fill")
                                    .padding(.top)
                                    .padding(.bottom)
                            }
                        }
                            
                            
                        LazyVGrid(columns: columns, spacing: 30) {
                            
                                
                        
                        ForEach(data, id: \.self) { item in
                            HStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .aspectRatio(contentMode:.fit)
                                    .foregroundColor(.white)
                                HStack{
                                    Text(item)
                                        .font(.system(size: 15))
                                        .font(.title).bold()
                                        .foregroundColor(.white)
                                        .shadow(radius: 20)
                                }
                            }
                        }
                    }
                    }
                    .popover(isPresented: $friend_leaderboard_popup){
                        Friend_Leaderboard()
                    }
                }
                    
                    .frame(width: 150, height: 300)
                        .background(customgray)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        .shadow(color: customgray.opacity(0.3), radius: 20, x: 0, y: 10)
                        .padding(10)
                    
                    
                    // Friend List
                    HStack{
                        Button{
                            friend_list_popup = true
                        }label:{
                        ScrollView {
                            HStack{
                                Text("Friend List")
                                    .font(.system(size: 20))
                                    .font(.title).bold()
                                    .foregroundColor(.white)
                                    .padding(.top)
                                    .padding(.bottom)

                                HStack{
                                    Image(systemName: "plus")
                                        .padding(.top)
                                        .padding(.bottom)
                                }
                            }
                                
                                
                            LazyVGrid(columns: columns, spacing: 30) {
                                
                                    
                            
                            ForEach(data, id: \.self) { item in
                                HStack{
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .aspectRatio(contentMode:.fit)
                                        .foregroundColor(.white)
                                    HStack{
                                        Text(item)
                                            .font(.system(size: 15))
                                            .font(.title).bold()
                                            .foregroundColor(.white)
                                            .shadow(radius: 20)
                                    }
                                }
                            }
                            }
                        }
                            .popover(isPresented: $friend_list_popup){
                                Friend_List()
                            }
                        }
                        .frame(width: 150, height: 300)
                            .background(customOlive)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            .shadow(color: customOlive.opacity(0.3), radius: 20, x: 0, y: 10)
                            .padding(10)
                    }
                }
                
                
                // Friends recent badge
                VStack{
                    Text("'Friend's recent badge")
                        .font(.system(size: 23))
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                        .padding(.bottom)
                    HStack{
                        Image(systemName: "globe.europe.africa")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                        .padding(.bottom)
                        HStack{
                            VStack{
                                Text("20 Taquilas Drank")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .shadow(radius: 20)
                                .font(.system(size: 20))
                                ProgressView(value: 1)
                                    .frame(width: 150, height: 20)
                                    .background(customRed)
                                    .padding(.bottom)
                                    .padding(.bottom)
                                    .padding(.leading)
                            }
                        }
                    }
                }
                .frame(width: 320, height: 210)
                .background(customRed)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
                
                
                // friend requests
                VStack{
                    VStack{
                        ScrollView {
                            HStack{
                                Text("Friend Requests")
                                    .font(.system(size: 25))
                                    .font(.title).bold()
                                    .foregroundColor(.white)
                                    .padding(.top)
                                    .padding(.bottom)
                            }
                                
                                
                            LazyVGrid(columns: columns, spacing: 50) {
                                
                            ForEach(data, id: \.self) { item in
                                VStack{
                                    HStack{
                                        Image(systemName: "person")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .aspectRatio(contentMode:.fit)
                                            .foregroundColor(.white)
                                        HStack{
                                            Text(item)
                                                .font(.system(size: 15))
                                                .font(.title).bold()
                                                .foregroundColor(.white)
                                                .shadow(radius: 20)
                                        }
                                    }
                                }                            }
                            }
                        }
                    }
                }
                .frame(width: 320, height: 130)
                .background(customBrown)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customBrown.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
            }
        }
        .frame(maxWidth: .infinity)
        .background(customGreen)
    }
}


struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
