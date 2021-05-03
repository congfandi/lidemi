//
//  GroupView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI
import AuthenticationServices
struct TeamView: View {
    @EnvironmentObject var globalState:GlobalViewModel
    var teams:[String] = ["Cong Fandi","Fredo","Goldy","Ali","Stephanie","Orang baru"]
    var teamHistory:[String] = ["Team 7","Team 3"]
    
    var body: some View{
        NavigationView{
            if(globalState.loginType == LoginType.Guest){
                loginButton()
            }else{
            teamView()
            }
        }
    }
    @Environment(\.colorScheme) var colorScheme
    @ViewBuilder func loginButton()-> some View{
        VStack{
            Text("You cannot use this feature because you sign in as guest")
                .multilineTextAlignment(.center)
                .padding(.all)
        SignInWithAppleButton(.signIn,              //1
              onRequest: { (request) in             //2
                //Set up request
              },
              onCompletion: { (result) in           //3
                switch result {
                case .success(_):
                    globalState.loginType = LoginType.Authorize
                    break
                case .failure(_):
                    //Handle error
                    break
                }
              })
            .signInWithAppleButtonStyle(colorScheme == .dark ? .white : .black)
            .frame(width: 200.0, height: 60.0)
            
        }.navigationBarHidden(false)
        .navigationTitle("My Team")
    }
    
    @ViewBuilder func teamView() -> some View {
      ScrollView{
            ZStack(alignment:.center){
                Circle()
                    .fill(Color.black)
                    .frame(width: 150, height: 150)
                Text("TEAM 1").bold().foregroundColor(.white)
            }
            Text("Mentor").bold().font(.title2).padding(.top)
            Text("Fandi").font(.body)
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

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
