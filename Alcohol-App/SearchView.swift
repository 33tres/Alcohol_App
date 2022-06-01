//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//
 
import SwiftUI
 
struct SearchView: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var currentUser: User
 
    let drinks = ["Budweiser", "Angry Orchard", "More Alc Names", "Literally Feces"]
    
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            List{
                ForEach(results, id: \.self){drink in
                    NavigationLink(destination: Text(drink)){
                        Text(drink)
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Search for a Drink!")
        }
    }
 
var results : [String] {
    if searchText.isEmpty{
        return drinks
    } else{
        return drinks.filter{ $0.contains(searchText)}
    }
}
}
struct SearchView_Previews: PreviewProvider {
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
        SearchView(currentUser: tempUser)
    }
}
    
