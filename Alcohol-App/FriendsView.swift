//
//  FriendsView.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//

import SwiftUI

struct FriendsView: View {
    let data = (1...50).map {
        "Friend \($0)" }
    let image =  Image(systemName: "person")
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
    let customLightGreen = Color(red: 0.750, green: 0.85, blue: 0.67)
    let customRed = Color(red: 0.71, green: 0.30, blue: 0.18)

    var body: some View {
        ScrollView {
            
                
            
            
            ScrollView {
                Text("Friends List")
                    .font(.title).bold().underline()
                    .foregroundColor(.white)
                    .padding()
                    
                    
                LazyVGrid(columns: columns, spacing: 30) {
                    
                        
                
                ForEach(data, id: \.self) { item in
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .aspectRatio(contentMode:.fit)
                        .foregroundColor(.white)
                        .padding()
                    Text(item)
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                       
                        
                    
                }
            }
                
                
            }.frame(width: 300, height: 300)
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
    
    
    
            
       /*     }
            HStack{
                Text("Friends List")
                    .font(.title).bold().underline()
                    .frame(width: 200, height: 100)
            }
        VStack{
            VStack{
            
            HStack{
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("friend 1")
                .frame(width: 70, height: 25)
            
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                Text("friend 2")
                    .frame(width: 70, height: 25)
                
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                Text("friend 3")
                    .frame(width: 70, height: 25)
                
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                Text("friend 4")
                    .frame(width: 70, height: 25)
                
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                Text("friend 5")
                    .frame(width: 70, height: 25)
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                Text("friend 6")
                    .frame(width: 70, height: 25)
                
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                Text("friend 7")
                    .frame(width: 70, height: 25)
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                Text("friend 8")
                    .frame(width: 70, height: 25)
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                Text("friend 9")
                .frame(width: 70, height: 25)
                    }
                }
            }*/



struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
