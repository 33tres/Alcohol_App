//
//  All_Badges.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/22/22.
//

import SwiftUI

struct All_Badges: View {
    let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
    let badgeCompleteColor = Color(red: 0.70, green: 1.0, blue: 0.67)
    let customOlive = Color(red: 0.81, green: 0.80, blue: 0.08)
    let customGrey = Color(red: 28, green: 28, blue: 28)
    let customRed = Color(red: 0.71, green: 0.30, blue: 0.18)
    @State var beerBadgeComplete10 = true
    @State var beerBadgeComplete25 = false
    @State var beerBadgeComplete100 = false
    @State var wineBadgeComplete10 = true
    @State var wineBadgeComplete25 = true
    @State var wineBadgeComplete100 = false
    
   
        var body: some View {
        ScrollView{
        VStack{
            Text("All Badges")
                .font(.system(size: 30))
                .font(.title).bold()
                .foregroundColor(.white)
                .shadow(radius: 20)
                .padding(10)
        }
        .frame(width: 200, height: 100)
        .background(customOlive)
            VStack{
                HStack{
                    VStack{
                    if(beerBadgeComplete10 == true){
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                                .background(badgeCompleteColor)
                                
                        
                    }else{
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                        .background(customGrey)
                    }
                    Text("Drink 10 beers")
                           
                            .foregroundColor(.white)
                    }
                   ///
                    VStack{
                    if(beerBadgeComplete25 == true){
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                                .background(badgeCompleteColor)
                        
                    }else{
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                        .background(customGrey)
                    }
                    Text("Drink 25 beers")
                            .foregroundColor(.white)
                    }
                    VStack{
                    if(beerBadgeComplete100 == true){
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                                .background(badgeCompleteColor)
                        
                    }else{
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                        .background(customGrey)
                    
                    }
                        Text("Drink 100 beers.")
                            .foregroundColor(.white)
                    }
                   
                }
            }
            VStack{
                HStack{
                    VStack{
                    if(wineBadgeComplete10 == true){
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                                .background(badgeCompleteColor)
                                
                        
                    }else{
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                        .background(customGrey)
                    }
                    Text("Drink 10 wines")
                           
                            .foregroundColor(.white)
                    }
                   ///
                    VStack{
                    if(wineBadgeComplete25 == true){
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                                .background(badgeCompleteColor)
                        
                    }else{
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                        .background(customGrey)
                    }
                    Text("Drink 25 wines")
                            .foregroundColor(.white)
                    }
                    VStack{
                    if(wineBadgeComplete100 == true){
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                                .background(badgeCompleteColor)
                        
                    }else{
                        Circle()
                                .frame(width: 40, height: 40)
                                .padding(5)
                        .background(customGrey)
                    
                    }
                        Text("Drink 100 wines.")
                            .foregroundColor(.white)
                    }
                   
                }
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
