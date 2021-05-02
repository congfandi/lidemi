//
//  SearchViewModel.swift
//  Lidemi
//
//  Created by Cong Fandi on 02/05/21.
//

import Foundation
import SwiftUI
class SearchViewModel: ObservableObject {
    @Published var active:Bool = true
    @Published var  graduate:Bool = true
    @Published var  dropOut:Bool  = true
    @Published var tech : Bool = true
    @Published var design:Bool = true
    @Published var profesional:Bool = true
    @Published var morning:Bool = true
    @Published var afternoon:Bool = true
    @Published var selectedDate = Date()
    @Published var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let myDate:Date = Date()
        let startComponents = DateComponents(year: 2019, month: 1, day: 1)
        let endComponents = Calendar.current.dateComponents([.year,.month,.day], from: myDate)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
}
