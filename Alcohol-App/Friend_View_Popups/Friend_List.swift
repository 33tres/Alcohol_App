//
//  Friend_List.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/22/22.
//

import SwiftUI

struct Friend_List: View {
    var current_User: User
    var allUsers = User.allUsers
    
    var body: some View {
        ScrollView{
            ZStack{
                VStack{
                    HStack{
                    Text("Friend List")
                    .font(.system(size: 30))
                    .font(.title).bold()
                    .padding(.top)
                    .padding(.bottom)
                    .foregroundColor(.black)
                    }
                    Divider().frame(width: 500,height: 3).background(Color.black)
                    VStack{
                        ForEach(current_User.friendIDsArray, id: \.self){ value in
                            HStack{
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .aspectRatio(contentMode:.fit)
                                .foregroundColor(.black)
                                .padding(.leading)
                            HStack{
                                Text("\(allUsers[value].username)")
                                    .font(.system(size: 22))
                                    .font(.title).bold()
                                    .foregroundColor(.black)
                                    .shadow(radius: 20)
                                    .padding()
                                Spacer()
                            }
                                Spacer()
                            }
                        }
                    }
                }
            }
            .frame(width: 380)
        }
    }
}

struct Friend_List_Previews: PreviewProvider {
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
        Friend_List(current_User: tempUser)
    }
}
