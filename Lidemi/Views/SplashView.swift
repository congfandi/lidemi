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
            Text("LIDEMI")
                .foregroundColor(.white)
                .font(.title)
                .bold()
            Text("Link Developer Academi").foregroundColor(.white)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
