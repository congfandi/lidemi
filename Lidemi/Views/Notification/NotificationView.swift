//
//  NotificationView.swift
//  Lidemi
//
//  Created by Cong Fandi on 28/04/21.
//

import SwiftUI

struct NotificationView: View {
    var notifications:[Notification] = [
        Notification(title: "Notif 1", subTitle: "tis is subtitle",isOpened:false),
        Notification(title: "Notif 2", subTitle: "tis is subtitle",isOpened:false),
        Notification(title: "Notif 3", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 4", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 5", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 6", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 7", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 8", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 9", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 10", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 11", subTitle: "tis is subtitle",isOpened:false),
        Notification(title: "Notif 12", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 13", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 14", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 15", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 16", subTitle: "tis is subtitle",isOpened:true),
        Notification(title: "Notif 17", subTitle: "tis is subtitle",isOpened:true)
    ]
    var body: some View {
        NavigationView {
                    List {
                        ForEach(notifications,id:\.self){ notif in
                            NavigationLink(destination:NotificationDetailView()){
                                HStack{
                                    VStack(alignment:.leading){
                                        Text(notif.title).bold().font(.headline)
                                        Text(notif.subTitle).font(.subheadline)
                                    }
                                    Spacer()
                                    if !notif.isOpened{
                                        Circle()
                                            .fill(Color.red)
                                            .frame(width: 9, height: 9)
                                    }
                                }
                        }
                    }
                    
                }.padding(.top)
                    .navigationBarTitle("Notification").accentColor(.white)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

struct Notification : Hashable {
    var title:String
    var subTitle:String
    var isOpened:Bool
}
