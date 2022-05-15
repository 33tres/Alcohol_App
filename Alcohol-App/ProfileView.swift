//
//  ProfileView.swift
//  Alcohol-App
//
//  Created by Samuel Harrell on 5/15/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.brown, .white]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    Image(systemName: "person")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                    .padding(15)
                }
                HStack{
                  Text("Username")
                }
                
                HStack{
                    Text("Email")
                }
                VStack{
                HStack{
                    
                    
                    Text("#I")
                        .padding(15)
                        .frame(width: 200, height: 125)
                    ProgressView(value: 0.2)
                        .frame(width: 160, height: 125)
                }
                    HStack{
                        Text("#Needed")
                            .padding(15)
                            .frame(width: 200, height: 125)
                        ProgressView(value: 0.2)
                            .frame(width: 160, height: 125)
                    }
                    HStack{
                        Text("#The")
                            .padding(15)
                            .frame(width: 200, height: 125)
                        ProgressView(value: 0.2)
                            .frame(width: 160, height: 125)
                    }
                    HStack{
                        Text("#Notebook")
                            .padding(15)
                            .frame(width: 200, height: 125)
                        ProgressView(value: 0.2)
                            .frame(width: 160, height: 125)
                    }
                }
            }
            }
           
        }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
