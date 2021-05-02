//
//  SignInView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI
import AuthenticationServices
struct SignInView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack{
                    Spacer()
                    SplashView()
                    Spacer()
                        HStack{
                            Button(action: {
                                   let provider = ASAuthorizationAppleIDProvider()
                                   let request = provider.createRequest()
                                   request.requestedScopes = [.fullName, .email]
                                   let controller = ASAuthorizationController(authorizationRequests: [request])
                                   controller.performRequests()
                                   //
                                print("yang login \(String(describing: request.user))")
                            }) {
                                HStack{
                                    Image(systemName: "applelogo").foregroundColor(.white)
                                    Text("Sign In With Apple")
                                        .fontWeight(.bold)
                                        .font(.body)
                                        .foregroundColor(.white)
                                }
                            }
                        }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 3)
                        )
                    Text("Or").foregroundColor(.white).padding(.vertical)
                    Button(action:{}){
                        Text("Continue as Guest")
                    }
                    Spacer()
                    Text("By  Sign In, you have been agree our").foregroundColor(.white)
                    NavigationLink(
                        destination: TermAndServiceView()){
                        Text("Term and Service")
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
