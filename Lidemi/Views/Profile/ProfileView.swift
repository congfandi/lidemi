//
//  ProfileView.swift
//  Lidemi
//
//  Created by Cong Fandi on 29/04/21.
//

import SwiftUI

struct ProfileView: View {
    var teams:[String] = ["TEAM 1","TEAM 2","TEAM 3"]

    var body: some View {
            ZStack{
                ScrollView{
                    Image("profile").ignoresSafeArea().statusBar(hidden: true)
                    HStack{
                        Text("Cong Fandi").font(.title2).multilineTextAlignment(.leading).padding(.vertical)
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack{
                        VStack{
                            HStack{
                                Image(systemName: "list.triangle")
                                Text("SHIFT").font(.headline).foregroundColor(.gray)
                            }
                            Text("Morning")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .background(Color.blue)
                                .clipShape(Capsule())
                        }
                        Spacer()
                        VStack{
                            HStack{
                                Image(systemName: "chevron.down.circle.fill").foregroundColor(.gray)
                                Text("EXPERTISE").font(.headline).foregroundColor(.gray)
                            }
                            Text("IT/TECH/IS")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .background(Color.blue)
                                .clipShape(Capsule())
                        }
                    }
                    .padding([.leading, .bottom, .trailing])
                    HStack{
                        VStack{
                            HStack{
                                Image(systemName: "person.2.fill").foregroundColor(.gray)
                                Text("TEAM").font(.headline).foregroundColor(.gray)
                            }
                            Text("Team 1")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .background(Color.blue)
                                .clipShape(Capsule())
                        }
                        Spacer()
                        VStack{
                            HStack{
                                Image(systemName: "command.square.fill").foregroundColor(.gray)
                                Text("PROJECT").font(.headline).foregroundColor(.gray)
                            }
                            Text("KILO KALO")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .background(Color.blue)
                                .clipShape(Capsule())
                        }
                    }
                    .padding([.leading, .bottom, .trailing])
                    Text("Team History").bold().font(.title2).padding(.top)
                    VStack{
                        ForEach(teams,id:\.self){team in
                            NavigationLink(destination:TeamView()){
                                HStack{
                                    Text(team)
                                    Spacer()
                                    Image(systemName: "chevron.right").foregroundColor(.gray)
                                }
                                .padding(.horizontal)
                            }
                            Divider()
                        }
                    }
                    .padding(.top)
                    Image("barcode")
                    Text("Reach me in").bold().font(.title2).padding(.top)
                    HStack{
                        Spacer()
                        Button(action: {
                            
                        }){
                            Image("Whatsapp")
                        }
                        Spacer()
                        Button(action:{
                            
                        }){
                            Image("Instagram")
                        }
                        Spacer()
                        Button(action:{
                            
                        }){
                            Image("Facebook")
                        }
                        Spacer()
                        Button(action:{
                            
                        }){
                            Image("LinkedIn")
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                }
            }.navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
