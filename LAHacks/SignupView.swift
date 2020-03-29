//
//  SignupView.swift
//  LAHacks
//
//  Created by Raghav Jain on 3/28/20.
//  Copyright © 2020 Raghav Jain. All rights reserved.
//

import SwiftUI

let lightGray = Color(red:196/255, green: 196/255, blue: 196/255, opacity: 0.26)

struct SignupView: View {
    @State private var Name = ""
    @State private var Email = ""
    @State private var Phone = ""
    @State private var Password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("BlueEgg")
                
                Text("COOP")
                    .font(.system(size: 60))
                    .fontWeight(.heavy)
                    .foregroundColor(lightBlue)
                
                Spacer()
                
                TextField("Name",text:self.$Name)
                    .padding()
                    .background(lightGray)
                TextField("Email",text:self.$Email)
                    .padding()
                    .background(lightGray)
                TextField("Phone Number",text:self.$Phone)
                    .padding()
                    .background(lightGray)
                    .keyboardType(.numberPad)
                SecureField("Password",text:self.$Password)
                    .padding()
                    .background(lightGray)
                
                Spacer()
                
                NavigationLink(destination: WelcomeView()) {
                    Text("Let's Build.")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                        .background(lightBlue)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            .padding(40.0)
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
