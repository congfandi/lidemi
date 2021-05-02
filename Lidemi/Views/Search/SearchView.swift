//
//  SearchView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText : String = ""
    var students:[Student] = [
        Student(id: "1", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 1", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi",photo: "fandi"),
        Student(id: "2", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 2", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi2",photo: "profile"),
        Student(id: "3", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 3", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi3",photo: "profile"),
        Student(id: "4", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 4", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi4",photo: "profile"),
        Student(id: "5", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 5", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi5",photo: "profile"),
        Student(id: "6", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 6", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi6",photo: "profile"),
        Student(id: "7", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 7", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi7",photo: "profile"),
        Student(id: "8", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 8", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi8",photo: "profile"),
        Student(id: "9", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 9", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi9",photo: "fandi"),
        Student(id: "10", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 10", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi10",photo: "fandi"),
        Student(id: "11", shift: "Morning", expertise: "Teach/IT/IS", team: "Team 11", project: "Lidemi", whatsapp: "6287832442424", instagram: "@thengoding", facebook: "congfandii", gender: "Male", dateOfBirth: "15/10/1994",name: "Moh Supandi11",photo: "fandi")
    ]
    @State private var favoriteColor = 0
    private let searchVM:SearchViewModel = SearchViewModel()
    var body: some View {
        NavigationView {
                    VStack {
                        SearchBar(text: $searchText)
                        Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                                        Text("Surabaya").tag(0)
                                        Text("Jakarta").tag(1)
                                        Text("Batam").tag(2)
                        }
                        .padding(.horizontal)
                                    .pickerStyle(SegmentedPickerStyle())
                        List{
                            ForEach(students,id:\.id){ student in
                                NavigationLink(destination:ProfileView()){
                                    HStack(alignment:.center){
                                        Image(student.photo)
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Circle())
                                                        .shadow(radius: 10)
                                            .frame(width: 100.0, height: 100.0)
                                        VStack(alignment:.leading,spacing:10){
                                            Text(student.name).font(.headline)
                                            HStack{
                                                Image(systemName: "list.triangle").foregroundColor(.gray)
                                                Text(student.shift)
                                                            .font(.headline)
                                                            .foregroundColor(.gray)
                                            }
                                            
                                            HStack{
                                                Image(systemName: "face.dashed").foregroundColor(.gray)
                                                Text(student.expertise)
                                                            .font(.headline)
                                                            .foregroundColor(.gray)
                                            }
                                            
                                            
                                            }
                                        
                                    }
                                }
                            }
                        }
                        }.navigationBarTitle(Text("Apple Student"))
                        .navigationBarItems(trailing: NavigationLink(destination:FilterView(searchVM: searchVM)){
                        Text("Filter")
                    })
                    }
                }
    }

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
