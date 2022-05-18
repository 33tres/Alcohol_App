//
//  HomeView.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//

import SwiftUI
import MapKit

struct HomeView: View {
    
    @State private var region: MKCoordinateRegion =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.75773, longitude: -75.985708), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
        let drink_of_the_day = Drink(name: "Budweiser", description: "what an excellent craft masterpiece, I love this amazing drink and I drink it with my great son ", history: "beutiful man")
        let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
        let customBrown = Color(red: 0.85, green: 0.66, blue: 0.41)
        let customgray = Color(red: 0.89, green: 0.87, blue: 0.71)
        let customOlive = Color(red: 0.81, green: 0.80, blue: 0.08)
        let customRed = Color(red: 0.71, green: 0.30, blue: 0.18)
            ScrollView{
            VStack{
                VStack{
                    Text("Drink of the Day")
                        .font(.system(size: 23))
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                HStack{
                    VStack{
                        Text(drink_of_the_day.name)
                            .font(.system(size: 23))
                            .font(.title).bold()
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                        Image(systemName: "bag.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                        .padding(15)
                    }
                HStack{
                    Text(drink_of_the_day.description)
                        .font(.system(size: 17))
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                        .padding(10)
                }
                }
                }
            }
            .frame(width: 350, height: 200)
            .background(customBrown)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            .shadow(color: customBrown.opacity(0.3), radius: 20, x: 0, y: 10)
            .padding(10)
                VStack{
                    VStack{
                        Text("Friend Leaderboard")
                            .font(.title).bold()
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                            .padding(15)
                        HStack{
                            Image(systemName: "person.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            HStack{
                                Text("Friend 1")
                                    .font(.title).bold()
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .padding(20)
                            }
                        }
                        HStack{
                            Image(systemName: "person.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            HStack{
                                Text("Friend 2")
                                    .font(.title).bold()
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .padding(20)
                            }
                        }
                        HStack{
                            Image(systemName: "person.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            HStack{
                                Text("Friend 3")
                                    .font(.title).bold()
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .padding(20)
                            }
                        }
                        HStack{
                            Image(systemName: "person.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            HStack{
                                Text("Friend 4")
                                    .font(.title).bold()
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .padding(20)
                            }
                        }
                    }
                }
                .frame(width: 300, height: 400)
                .background(customgray)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customgray.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
                VStack{
                    Text("Recommended Drink")
                        .font(.system(size: 23))
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                HStack{
                    Image(systemName: "bag.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                    .padding(15)
                HStack{
                    Text("Quick reasoning on why we chose this alcohol for this person, it can be reasons like thay have chosen similar alcohols, or they dont like different")
                        .font(.system(size: 17))
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                        .padding(15)
                }
                }
                }
                .frame(width: 300, height: 250)
                .background(customOlive)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: customOlive.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(10)
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
                VStack{
                    VStack{
                        Text("Popular Beer in your location")
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
