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
        ID: 100000000,
        numDrinksArray: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0, 0, 0],
        drinkIDsArray: [],
        friendIDsArray: [100000001, 100000002]
        )
    static var previews: some View {
        SearchView(currentUser: tempUser)
    }
}
    
