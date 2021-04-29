//
//  LoginView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct LoginView: View {
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
