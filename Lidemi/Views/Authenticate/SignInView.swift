//
//  SignInView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI
import AuthenticationServices
struct SignInView: View {
    
   @ObservedObject private var globalState:GlobalViewModel
    
    init(globalState:GlobalViewModel) {
        self.globalState = globalState
    }
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
                VStack{
                    Spacer()
                    SplashView()
                    Spacer()
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
                        .foregroundColor(Color.init("primary"))
                        .signInWithAppleButtonStyle(colorScheme == .dark ? .white : .black)
                        .frame(width: 200.0, height: 60.0)
                        
                    Text("Or").padding(.vertical)
                    Button(action:{
                        globalState.loginType = LoginType.Guest
                    }){
                        Text("Continue as Guest")
                    }
                    Spacer()
                    Text("By  Sign In, you have been agree our")
                    NavigationLink(
                        destination: TermAndServiceView()){
                        Text("Term and Service")
                    }
                }
            }.navigationBarHidden(true)
        }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(globalState: GlobalViewModel())
    }
}
