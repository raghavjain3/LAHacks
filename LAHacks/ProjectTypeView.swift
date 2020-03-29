//
//  ProjectTypeView.swift
//  LAHacks
//
//  Created by Raghav Jain on 3/28/20.
//  Copyright © 2020 Raghav Jain. All rights reserved.
//

import SwiftUI

struct ProjectTypeView: View {
    var types = ["Kitchen Remodel", "Living Room Remodel", "New Construction", "Landscaping", "Other"]
    @State private var ProjectType = 0
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("Type")
                Spacer()
                    .frame(height:50)
                Text("Select Project Type.")
                    .fontWeight(.bold)
                    .frame(alignment: .leading)
                
                Spacer()
                
                Text("\(types[ProjectType])")
                
                VStack {
                    Picker(selection: $ProjectType, label: Text("Please choose a color")) {
                        ForEach(0 ..< types.count) {
                            Text(self.types[$0])
                        }
                    }
                }
                
                Spacer()
                    .frame(height:30)
                
                NavigationLink(destination: ProjectAddressView()) {
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

struct ProjectTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectTypeView()
    }
}
