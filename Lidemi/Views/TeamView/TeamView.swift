//
//  GroupView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct TeamView: View {
    var teams:[String] = ["Cong Fandi","Fredo","Goldy","Ali","Stephanie"]
    var teamHistory:[String] = ["Team 7","Team 3"]
    var body: some View{
        NavigationView{
            ScrollView{
                ZStack(alignment:.center){
                    Circle()
                        .fill(Color.black)
                        .frame(width: 150, height: 150)
                    Text("TEAM 1").bold().foregroundColor(.white)
                    
                }
                Text("Mentor").bold().font(.title2).padding(.top)
                Text("Ari Qurniawan").font(.body)
                Text("Team Member").bold().font(.title2).padding(.top)
                VStack{
                    ForEach(teams,id:\.self){ team in
                        NavigationLink(destination:ProfileView()){
                            VStack{
                                HStack{
                                    Text(team)
                                    Spacer()
                                    Image(systemName:"chevron.right").foregroundColor(.gray)
                                }
                                Divider()
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.vertical)
                Text("My Team History").bold().font(.title2).padding(.top)
                VStack{
                    ForEach(teamHistory,id:\.self){ team in
                        NavigationLink(destination:TeamHistoryView()){
                            VStack{
                                HStack{
                                    Text(team)
                                    Spacer()
                                    Image(systemName:"chevron.right").foregroundColor(.gray).frame(width: 12.0, height: 12.0)
                                    
                                }
                                Divider()
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.vertical)
               
            }.navigationBarHidden(false)
            .navigationTitle("My Team")
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
