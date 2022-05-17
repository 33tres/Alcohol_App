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
        let customRed = Color(red: 0.71, green: 0.30, blue: 0.18)
        
        
        VStack {
            ScrollView{
             
                    
                       
                    HStack{
                        Image(systemName: "bag.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                        .padding(15)
                   
                    } .frame(width: 200, height: 200)
                        .background(customRed)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                        .padding(10)
                    
                HStack{
                    
                    Menu("Click to view progress") {
                        Button("Beer", action: showBeer)
                        Button("Vodka", action: showVodka)
                        Button("Tequila", action: showTequila)
        
                    }.foregroundColor(.white)
                   
                    
                }
                .frame(width: 200, height: 200)
                    .background(customRed)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                    .shadow(color: customRed.opacity(0.3), radius: 20, x: 0, y: 10)
                    .padding(10)
                
                    }
                
               
            .frame(maxWidth: .infinity)
        .background(customGreen)
           
        }
        }
    func showBeer() {
        

    }
      func showVodka() { }
      func showTequila() { }
        }
       
        



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
