//
//  NameProjectView.swift
//  LAHacks
//
//  Created by Raghav Jain on 3/28/20.
//  Copyright © 2020 Raghav Jain. All rights reserved.
//

import SwiftUI

struct NameProjectView: View {
    @State private var ProjectName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("Gear")
                Spacer()
                    .frame(height:50)
                Text("Name your project.")
                    .fontWeight(.bold)
                    .frame(alignment: .leading)
                TextField("Project Name",text:self.$ProjectName)
                    .padding()
                    .background(lightGray)
                
                Spacer()
                    .frame(height:30)
                
                NavigationLink(destination: ProjectTypeView()) {
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

struct NameProjectView_Previews: PreviewProvider {
    static var previews: some View {
        NameProjectView()
    }
}
