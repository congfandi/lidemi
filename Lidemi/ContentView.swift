//
//  ContentView.swift
//  Lidemi
//
//  Created by Cong Fandi on 27/04/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var globalState:GlobalViewModel = GlobalViewModel()
        
        var body: some View {
                    VStack {
                        if self.globalState.isActive {
                            if(globalState.loginType == LoginType.Guest || globalState.loginType == LoginType.Authorize){
                                MainView(globalState: globalState)
                            }else{
                                SignInView(globalState: globalState)
                            }
                        } else {
                            SplashView()
                        }
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                self.globalState.isActive = true
                            }
                        }
                    }
                }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
