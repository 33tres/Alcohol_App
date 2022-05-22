//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//
 
import SwiftUI
 
struct SearchView: View {
    var drinksArray: [Drink] = Drink.allDrinks
    var usersArray: [User] = User.allUsers
 
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
            .navigationTitle("")
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
    static var previews: some View {
        SearchView()
    }
}
    

    

    
    
