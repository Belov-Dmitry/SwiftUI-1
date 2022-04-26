//
//  ContentView.swift
//  SwiftUI-1
//
//  Created by Dmitry Belov on 26.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        
        ZStack {
            GeometryReader { geometry in
            Image("Wall-e_cut")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: geometry.size.width,
                   maxHeight:geometry.size.height)
            }
            
        ScrollView {
            
            VStack {
                
                HStack {
                Text("VK")
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                    .padding(.top, 35)
                    .font(.system(size: 50))
                Spacer()
                }.frame(maxWidth: 250)
                
                HStack {
                    Text("Login:")
                    Spacer()
                    TextField("Enter login here", text: $login)
                        .frame(maxWidth: 150)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 10)
                }.frame(maxWidth: 250)
                
                HStack {
                    Text("Password:")
                    Spacer()
                    SecureField("Enter pass here", text: $password)
                        .frame(maxWidth: 150)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 10)
                }.frame(maxWidth: 250)
                
                HStack {
                    
                Button("Log in") {
                    print(login)
                }
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                    .disabled(login.isEmpty || password.isEmpty)
                    .font(.system(size: 30))
                    .accentColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
             Spacer()
                }.frame(maxWidth: 250)
            }
            Spacer()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
