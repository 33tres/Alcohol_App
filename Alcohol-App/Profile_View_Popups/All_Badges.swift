//
//  All_Badges.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/22/22.
//

import SwiftUI

struct All_Badges: View {
    let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
    let customRed = Color(red: 0.71, green: 0.30, blue: 0.18)
    let customOlive = Color(red: 0.81, green: 0.80, blue: 0.08)
    let customGrey = Color(red: 28, green: 28, blue: 28)
    @State var badgeComplete = false
    var body: some View {
        ScrollView{
        VStack{
            Text("All Badges")
                .font(.system(size: 30))
                .font(.title).bold()
                .foregroundColor(.white)
                .shadow(radius: 20)
                .padding(5)
        }
        .frame(width: 200, height: 100)
        .background(customOlive)
            VStack{
                HStack{
                Circle()
                        .frame(width: 50, height: 50)
                        .padding(5)
                    .background(customRed)
                    Circle()
                        .frame(width: 50, height: 50)
                        .padding(5)
                    .background(customGrey)
                    Circle()
                        .frame(width: 50, height: 50)
                        .padding(5)
                    .background(customRed)
                    Circle()
                        .frame(width: 50, height: 50)
                        .padding(5)
                    .background(customRed)
                    Circle()
                        .frame(width: 50, height: 50)
                        .padding(5)
                    .background(customRed)
                    
                        
                    
                  
                   
                }
            }
            HStack{
                Circle()
                    .frame(width: 50, height: 50)
                    Circle()
                        .frame(width: 50, height: 50)
                    Circle()
                        .frame(width: 50, height: 50)
                    Circle()
                        .frame(width: 50, height: 50)
                    Circle()
                        .frame(width: 50, height: 50)
                    Circle()
                        .frame(width: 50, height: 50)
            }
        
        
        }
        .frame(maxWidth: .infinity)
        .background(customGreen)
    }
    
}
   
struct All_Badges_Previews: PreviewProvider {
    static var previews: some View {
        All_Badges()
    }
}
