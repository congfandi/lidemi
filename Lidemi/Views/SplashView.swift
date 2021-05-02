//
//  SplashView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack{
            Text("SIAPA")
                .foregroundColor(.white)
                .font(.title)
                .bold()
            Text("System Integration of \nApple Programe Academi Indonesia").foregroundColor(.white).multilineTextAlignment(.center)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
