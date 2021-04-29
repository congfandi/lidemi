//
//  GroupView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            TabView {
                    TeamView()
                     .tabItem {
                        Image(systemName: "person.2.circle")
                        Text("Team")
                      }
                   SearchView()
                     .tabItem {
                        Image(systemName: "magnifyingglass.circle")
                        Text("Search")
                     }
                    NotificationView()
                  .tabItem {
                     Image(systemName: "bell.circle")
                     Text("Notif")
                   }
                    SettingView()
                  .tabItem {
                     Image(systemName: "gear")
                     Text("Setting")
                   }
            }
        }.navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
