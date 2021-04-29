//
//  TeamHistoryView.swift
//  Lidemi
//
//  Created by Cong Fandi on 29/04/21.
//

import SwiftUI

struct TeamHistoryView: View {
    var teams:[String] = ["Cong Fandi","Fredo","Goldy","Ali","Stephanie"]
    var teamHistory:[String] = ["Team 7","Team 3"]
    var body: some View{
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
            }.navigationBarTitle("My Team History")
    }
}

struct TeamHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TeamHistoryView()
    }
}
