//
//  ProfileView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
        let customLightGreen = Color(red: 0.750, green: 0.85, blue: 0.67)
        
        
        ScrollView{
           
            VStack{
                VStack{
                    Image(systemName: "person")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                    .padding(15)
                    .background(customLightGreen)
              
                }
                HStack{
                  Text("Username")
                       
                        .font(.title).bold()
                        .background(customLightGreen)
                      
                }
                
                HStack{
                    Text("Email@email.com")
                        .bold()
                        .padding(1)
                        .background(customLightGreen)
                        
                }
                VStack{
                HStack{
                    Text("# of Beers")
                        .padding(15)
                        .frame(width: 150, height: 50)
                        .background(customLightGreen)
                        .padding(15)
                    ProgressView(value: 0.4)
                        .frame(width: 150, height: 50)
                        .background(customLightGreen)
                        .padding(15)

                }
               
                    HStack{
                        Text("# of Vodkas")
                            .padding(15)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        ProgressView(value: 0.2)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                    }
                    HStack{
                        Text("# of Gins")
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        ProgressView(value: 0.2)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                    }
                    HStack{
                        Text("# of Whiskeys")
                            .padding(15)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        ProgressView(value: 0.2)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                    }
                    HStack{
                        Text("# of Wines")
                            .padding(15)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        ProgressView(value: 0.2)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        }
                    HStack{
                        Text("# of Rum")
                            .padding(15)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        ProgressView(value: 0.2)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        }
                    HStack{
                        Text("# of Cocktails")
                            .padding(15)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        ProgressView(value: 0.2)
                            .frame(width: 150, height: 50)
                            .background(customLightGreen)
                            .padding(15)
                        }
                    }
                }
            }
        .frame(maxWidth: .infinity)
        .background(customGreen)
        }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
