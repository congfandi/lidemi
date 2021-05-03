//
//  SettingView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct SettingView: View {
    @State private var showGreeting = true
    @State private var showSignOutAlert = false
    @State private var showDeleteAlert = false
    @EnvironmentObject var globalState:GlobalViewModel
    var body: some View {
        NavigationView {
                List{
                    HStack{
                        Text("Notification")
                        Spacer()
                        Toggle("", isOn: $showGreeting)
                    }
                    NavigationLink(destination:ProfileView()){
                        HStack{
                            Text("Account")
                        }
                    }
                    NavigationLink(destination:ProfileView()){
                        HStack{
                            Text("Term of Service")
                        }
                    }
                    NavigationLink(destination:ProfileView()){
                        HStack{
                            Text("About App")
                        }
                    }
                    if(globalState.loginType == LoginType.Authorize){
                    Spacer()
                    NavigationLink(destination:ProfileView()){
                        HStack{
                            Text("Account")
                        }
                    }
                    Button(action: {showDeleteAlert=true}){
                        HStack{
                            Text("Delete Account").foregroundColor(.red)
                            Spacer()
                        }
                    }.alert(isPresented: $showDeleteAlert) {
                        Alert(title: Text("Delete Account?"), message: Text("you will not be able to get your account back"), primaryButton: .cancel(),secondaryButton: .destructive(Text("Delete").foregroundColor(.red),action:{
                            print("delete Account")
                        })
                        )
                    }
                    Button(action: {
                       showSignOutAlert = true
                    }){
                        HStack{
                            Text("Sign Out").foregroundColor(.red)
                            Spacer()
                        }
                    }
                    .alert(isPresented: $showSignOutAlert) {
                        Alert(title: Text("Sign Out"), message: Text("Ahhh! we will miss you"), primaryButton: .cancel(),secondaryButton: .destructive(Text("SignOut").foregroundColor(.red),action:{
                            globalState.loginType = LoginType.Unauthorize
                        })
                        )
                    }
                    }
                }.padding(.top)
                .navigationBarTitle("Setting")
                .accentColor(.white)
                .navigationBarHidden(false)
        }
        }
    }


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
