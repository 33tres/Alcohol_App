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
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.brown, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        
            NavigationView {
                      Text("Searching for \(searchText)")
                          .searchable(text: $searchText)
                          .navigationTitle("Search For Beer!")
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
    
    
    
