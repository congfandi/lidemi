//
//  NotificationView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct NotificationView: View {

    var body: some View {
        NavigationView {
                    List {
                        HStack{
                            VStack(alignment:.leading){
                                Text("You have new invitation").bold().font(.headline)
                                Text("Cong fandi invite you to team 7").font(.subheadline)
                            }
                            Spacer()
                            Circle()
                                .fill(Color.red)
                                .frame(width: 9, height: 9)
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("You have new invitation").bold().font(.headline).foregroundColor(.gray)
                                Text("Cong fandi invite you to team 7").font(.subheadline).foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("You have new invitation").bold().font(.headline).foregroundColor(.gray)
                                Text("Cong fandi invite you to team 7").font(.subheadline).foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("You have new invitation").bold().font(.headline).foregroundColor(.gray)
                                Text("Cong fandi invite you to team 7").font(.subheadline).foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("You have new invitation").bold().font(.headline).foregroundColor(.gray)
                                Text("Cong fandi invite you to team 7").font(.subheadline).foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("You have new invitation").bold().font(.headline).foregroundColor(.gray)
                                Text("Cong fandi invite you to team 7").font(.subheadline).foregroundColor(.gray)
                            }
                        }
                    }.padding(.top)
                    .navigationBarTitle("Notification").accentColor(.white)
                    
                }
                //.background(Color.green)// Not working
            }
    }

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
