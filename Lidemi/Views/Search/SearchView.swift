//
//  SearchView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct SearchView: View {
    init() {
        UITableView.appearance().backgroundColor = .white
    }
    @State private var searchText : String = ""
    let cars = ["Subaru WRX", "Tesla Model 3", "Porsche 911", "Renault Zoe", "DeLorean"]
    var body: some View {
        NavigationView {
                    VStack {
                        SearchBar(text: $searchText)
                        List {
                            ForEach(self.cars, id: \.self) { car in
                                Text(car)
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
