//
//  ProjectAddressView.swift
//  LAHacks
//
//  Created by Raghav Jain on 3/28/20.
//  Copyright © 2020 Raghav Jain. All rights reserved.
//

import SwiftUI

struct ProjectAddressView: View {
    @State private var ProjectAddress = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("Address")
                Spacer()
                    .frame(height:50)
                Text("Project Address.")
                    .fontWeight(.bold)
                    .frame(alignment: .leading)
                TextField("Enter Address",text:self.$ProjectAddress)
                    .padding()
                    .background(lightGray)
                
                Spacer()
                    .frame(height:30)
                
                NavigationLink(destination: InviteTeamView()) {
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

struct ProjectAddressView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectAddressView()
    }
}
