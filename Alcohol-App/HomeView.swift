//
//  HomeView.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//

import SwiftUI
import MapKit

struct HomeView: View {
    
    @State var drink_of_the_day_popup = false
    @State var friend_leaderboard_popup = false
    @State var recomended_drink_popup = false
    @State var popular_drink_location_popup = false
    var currentUser: User
    var drinksArray: [Drink] = Drink.allDrinks
    var usersArray: [User] = User.allUsers
    
    @State private var region: MKCoordinateRegion =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.75773, longitude: -75.985708), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
        let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
       // let customBrown = Color(red: 0.85, green: 0.66, blue: 0.41)
        let customgray = Color(red: 0.89, green: 0.87, blue: 0.71)
        let customOlive = Color(red: 0.81, green: 0.80, blue: 0.08)
        let customRed = Color(red: 0.71, green: 0.30, blue: 0.18)
        NavigationView{
        ScrollView{
            
            // Drink of the day
            VStack{
                Button{
                    drink_of_the_day_popup = true
                } label:{
                VStack{
                    Text("Drink of the Day")
                        .font(.system(size: 23))
                        .font(.title).bold()
                        .foregroundColor(.black)
                        .shadow(radius: 20)
                HStack{
                    VStack{
                        Text("\(drinksArray[0].name)")
                            .font(.system(size: 23))
                            .font(.title).bold()
                            .foregroundColor(.black)
                            .shadow(radius: 20)
                            .padding(5)
                        Image("\(drinksArray[0].name)")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    }
                HStack{
                    Text("\(drinksArray[0].description)")
                        .font(.system(size: 12))
                        .font(.title).bold()
                        .foregroundColor(.black)
                        .shadow(radius: 20)
                        .padding(10)
                }
                }
            }
                .popover(isPresented: $drink_of_the_day_popup){
                    Drink_View(current_Drink: drinksArray[0], current_User: currentUser)
                }
            } // label
        }
            .frame(width: 350, height: 200)
            .background(.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            .shadow(color: .white.opacity(0.3), radius: 20, x: 0, y: 10)
            .padding(10)
            
            
            // Friend Leaderboard
                VStack{
                    Button{
                        friend_leaderboard_popup = true
                    }label:{
                    VStack{
                        ScrollView{
                        Text("Friend Leaderboard")
                            .font(.title).bold()
                            .foregroundColor(.black)
                            .shadow(radius: 20)
                            .padding(15)
                            Divider()
                        Spacer()
                        VStack{
                            ForEach(currentUser.friendIDsArray, id: \.self){ value in
                                HStack{
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .aspectRatio(contentMode:.fit)
                                        .foregroundColor(.black)
                                        .padding(.leading)
                                    Spacer()
                                    HStack{
                                        Text("\(usersArray[value].username)")
                                            .font(.system(size: 22))
                                            .font(.title).bold()
                                            .foregroundColor(.black)
                                            .shadow(radius: 20)
                                        Spacer()
                                        HStack{
                                            Text("\(usersArray[value].numDrinksArray[0])")
                                                .font(.system(size: 22))
                                                .font(.title).bold()
                                                .foregroundColor(.black)
                                                .shadow(radius: 20)
                                        }
                                    }
                                    Spacer()
                                }
                                Divider()
                            }
                        }
                    }
                    }// label
                    .popover(isPresented: $friend_leaderboard_popup){
                        Friend_Leaderboard(current_User: currentUser)
                    }
                    }
                }
                .frame(width: 300, height: 400)
                .background(customgray)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customgray.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
            
            
            // Drink of the day
            VStack{
                Button{
                    recomended_drink_popup = true
                } label:{
                VStack{
                    Text("Recomended Drink")
                        .font(.system(size: 23))
                        .font(.title).bold()
                        .foregroundColor(.black)
                        .shadow(radius: 20)
                HStack{
                    VStack{
                        Text("\(drinksArray[1].name)")
                            .font(.system(size: 23))
                            .font(.title).bold()
                            .foregroundColor(.black)
                            .shadow(radius: 20)
                            .padding(5)
                        Image("\(drinksArray[1].name)")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(15)
                    }
                HStack{
                    Text("\(drinksArray[1].description)")
                        .font(.system(size: 12))
                        .font(.title).bold()
                        .foregroundColor(.black)
                        .shadow(radius: 20)
                        .padding(10)
                }
                }
            }
                .popover(isPresented: $recomended_drink_popup){
                    Drink_View(current_Drink: drinksArray[1], current_User: currentUser)
                }
            } // label
        }
            .frame(width: 320, height: 220)
            .background(.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            .shadow(color: .white.opacity(0.3), radius: 20, x: 0, y: 10)
            .padding(10)
            
            
            // Closest Next Badge
                VStack{
                    VStack{
                        Text("Closest Next Badge")
                            .font(.system(size: 23))
                            .font(.title).bold()
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                        HStack{
                            Image(systemName: "globe.europe.africa")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .padding(2)
                            HStack{
                                VStack{
                                    Text("35 Bourbons Drank")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .font(.system(size: 20))
                                    ProgressView(value: 0.8)
                                        .frame(width: 150, height: 50)
                                        .background(customRed)
                                }
                            }
                        }
                    }
                }
                .frame(width: 280, height: 210)
                .background(customRed)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
            
            
                // Popular Drink in Location
            Button{
                popular_drink_location_popup = true
            }label:{
                VStack{
                    VStack{
                        Text("Popular Drink in your location")
                            .font(.system(size: 23))
                            .font(.title).bold()
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                            .padding(8)
                        
                    }
                    Map(coordinateRegion: $region)
                    .padding(10)
                }
                .frame(width: 330, height: 300)
                .background(customOlive)
                .cornerRadius(20)
                .shadow(color: customOlive.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customOlive.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
        }
            .popover(isPresented: $popular_drink_location_popup){
                Popular_Drink_Location_Popup()
            }
        }
            .frame(maxWidth: .infinity)
            .background(customGreen)
            .navigationTitle("Home")
        }
    }
}


struct HomeView_Previews: PreviewProvider {
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
        HomeView(currentUser: tempUser)
    }
}
