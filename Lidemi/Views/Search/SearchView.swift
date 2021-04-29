//
//  SearchView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct SearchView: View {

    var items: [GridItem] {
      Array(repeating: .init(.adaptive(minimum: 120)), count: 2)
    }
    @State private var searchText : String = ""
    let cars = ["Subaru WRX", "Tesla Model 3", "Porsche 911", "Renault Zoe", "DeLorean"]
    var body: some View {
        NavigationView {
                    VStack {
                        SearchBar(text: $searchText)
                        ScrollView {
                            ForEach(self.cars, id: \.self) { car in
                                LazyVGrid(columns: items,spacing:20){
                                    Text(car)
                                }
                            }
                        }.navigationBarTitle(Text("Apple Student"))
                    }
                }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
