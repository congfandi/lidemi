//
//  FilterView.swift
//  Lidemi
//
//  Created by Cong Fandi on 02/05/21.
//

import SwiftUI

struct FilterView: View {
    @Environment(\.presentationMode) var presentationMode
    private var searchVM:SearchViewModel
    init(searchVM:SearchViewModel) {
        self.searchVM = searchVM
    }
    var body: some View {
        List{
            VStack(alignment:.leading){
                Text("Batch").font(.title)
                DatePicker(
                       "Select Date",
                    selection: .init(get:{
                        searchVM.selectedDate
                    },set:{date in
                        searchVM.selectedDate = date
                    }),
                    in: searchVM.dateRange,
                    displayedComponents: [.date,]
                   )
            }
            VStack(alignment:.leading){
                Text("Status").font(.title)
                Toggle("Active",isOn: .init(
                    get:{searchVM.active},set:{searchVM.active = $0}
                ))
                Toggle("Graduate",isOn: .init(
                    get:{searchVM.graduate},set:{searchVM.graduate = $0}
                ))
                Toggle("Drop Out",isOn: .init(
                    get:{searchVM.dropOut},set:{searchVM.dropOut = $0}
                ))
            }
            VStack(alignment:.leading){
                Text("Expertise").font(.title)
                Toggle("Tech/IT/IS",isOn: .init(
                    get:{searchVM.tech},set:{searchVM.tech = $0}
                ))
                Toggle("Design",isOn: .init(
                    get:{searchVM.design},set:{searchVM.design = $0}
                ))
                Toggle("Professional",isOn: .init(
                    get:{searchVM.profesional},set:{searchVM.profesional = $0}
                ))
            }
            VStack(alignment:.leading){
                Text("Shift").font(.title)
                Toggle("Morning",isOn: .init(
                    get:{searchVM.morning},set:{searchVM.morning = $0}
                ))
                Toggle("Afternoon",isOn: .init(
                    get:{searchVM.afternoon},set:{searchVM.afternoon = $0}
                ))
            }
        }
        .padding(.vertical)
        .navigationTitle("Filter")
        .navigationBarItems(trailing: Button(action:{
            print("date kepilih \(searchVM.selectedDate)")
            self.presentationMode.wrappedValue.dismiss()
        }){
            Text("Apply")
        })
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(searchVM: SearchViewModel())
    }
}
