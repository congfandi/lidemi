//
//  ContentView.swift
//  Lidemi
//
//  Created by Cong Fandi on 27/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive:Bool = false
        
        var body: some View {
                ZStack{
                    Color.black.ignoresSafeArea()
                    VStack {
                        if self.isActive {
//                          SignInView()
                            MainView()
                        } else {
                            SplashView()
                        }
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                self.isActive = true
                            }
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
