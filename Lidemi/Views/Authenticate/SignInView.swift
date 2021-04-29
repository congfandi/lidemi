//
//  SignInView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack{
                    Spacer()
                    SplashView()
                    Spacer()
                    NavigationLink(destination:MainView()){
                        HStack{
//                            Button(action: {
//
//                            }) {
//                                HStack{
//                                    Image(systemName: "applelogo").foregroundColor(.white)
//                                    Text("Sign In With Apple")
//                                        .fontWeight(.bold)
//                                        .font(.body)
//                                        .foregroundColor(.white)
//                                }
//                            }
                            Image(systemName: "applelogo").foregroundColor(.white)
                            Text("Sign In With Apple")
                                .fontWeight(.bold)
                                .font(.body)
                                .foregroundColor(.white)
                        }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 3)
                        )
                    }.navigationBarHidden(true)
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
