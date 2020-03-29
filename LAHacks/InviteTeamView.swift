//
//  InviteTeamView.swift
//  LAHacks
//
//  Created by Raghav Jain on 3/28/20.
//  Copyright © 2020 Raghav Jain. All rights reserved.
//

import SwiftUI

struct InviteTeamView: View {
    @State private var ProjectName = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("Team")
                Spacer()
                    .frame(height:50)
                Text("Invite your team.")
                    .fontWeight(.bold)
                    .frame(alignment: .leading)
                TextField("Enter phone numbers",text:self.$ProjectName)
                    .padding()
                    .background(lightGray)
                
                Spacer()
                    .frame(height:30)
                
                NavigationLink(destination: ConifrmationView()) {
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
            .padding(40.0)
        }
    }
}

struct InviteTeamView_Previews: PreviewProvider {
    static var previews: some View {
        InviteTeamView()
    }
}
