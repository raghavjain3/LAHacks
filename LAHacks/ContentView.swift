//
//  ContentView.swift
//  LAHacks
//
//  Created by Raghav Jain on 3/28/20.
//  Copyright © 2020 Raghav Jain. All rights reserved.
//

import SwiftUI

let lightBlue = Color(red:194/255, green: 207/255, blue: 224/255)

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                lightBlue.edgesIgnoringSafeArea(.all)
                VStack {
                    Image("WhiteEgg")
                    Text("COOP")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    Spacer()
                    NavigationLink(destination: SignupView()) {
                        Text("Let's Build.")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(Color.black)
                            .cornerRadius(30)
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            .padding(40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
