//
//  SearchView.swift
//  Alcohol-App
//
//  Created by David Harrell on 5/15/22.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        let customGreen = Color(red: 0.70, green: 0.81, blue: 0.67)
     
        
            NavigationView {
                      Text("Searching for \(searchText)")
                          .searchable(text: $searchText)
                          .navigationTitle("Search for a Drink!")
                        
            
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
    
    
    
