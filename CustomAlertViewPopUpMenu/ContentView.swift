//
//  ContentView.swift
//  CustomAlertViewPopUpMenu
//
//  Created by Ramill Ibragimov on 04.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show: Bool = false
    var body: some View {
        ZStack {
            NavigationView {
                Text("Add Something")
                    .navigationBarTitle("Home", displayMode: .inline)
                    .navigationBarItems(
                        leading:
                        Button(action: {
                            withAnimation {
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: "square.stack.3d.down.dottedline")
                        }),
                        trailing:
                        Button(action: {
                            withAnimation {
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: "square.and.line.vertical.and.square")
                        })
                )
            }
            if self.show {
                GeometryReader { _ in
                    Menu()
                        .offset(y: -150)
                    
                }.background(
                    Color.black.opacity(0.65)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                self.show.toggle()
                            }
                    }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Menu: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Button(action: {
                
            }) {
                HStack(spacing: 12) {
                    Image(systemName: "house")
                        .font(.title)
                        .offset(x: -3, y: -2)
                    Text("Home")
                }
            }
            Button(action: {
                
            }) {
                HStack(spacing: 20) {
                    Image(systemName: "person")
                        .font(.title)
                    Text("Profile")
                }
            }
            Button(action: {
                
            }) {
                HStack(spacing: 20) {
                    Image(systemName: "bell")
                        .font(.title)
                        .offset(x: -1)
                    Text("Notification")
                }
            }
            Button(action: {
                
            }) {
                HStack(spacing: 16) {
                    Image(systemName: "gear")
                        .font(.title)
                        .offset(x: -3)
                    Text("Setting")
                }
            }
        }
        .padding()
        .foregroundColor(Color.black)
        .background(Color.white)
        .cornerRadius(15)
    }
}
        
