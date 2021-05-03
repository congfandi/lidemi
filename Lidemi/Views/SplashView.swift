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
                .font(.title)
                .bold()
            Text("Link Developer Academi\n Indonesia")
                .multilineTextAlignment(.center)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
