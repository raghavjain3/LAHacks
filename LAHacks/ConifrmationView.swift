//
//  ConifrmationView.swift
//  LAHacks
//
//  Created by Raghav Jain on 3/28/20.
//  Copyright © 2020 Raghav Jain. All rights reserved.
//

import SwiftUI

struct ConifrmationView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Your project has been created!")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                
                Spacer()
                
                
                
                NavigationLink(destination: ContentView()) {
                    Text("Next")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                        .background(lightBlue)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                Spacer()
            }
        }
    }
}

struct ConifrmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConifrmationView()
    }
}
