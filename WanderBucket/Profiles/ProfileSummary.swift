//
//  ProfileSummary.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/5/21.
//

import SwiftUI

struct ProfileSummary: View {
    //@EnvironmentObject var modelData: ModelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)

                Text("Name: \(profile.name)")
                Text("From: \(profile.nationality)")
                Text("Age:  \(profile.age)")
            }
            .padding()
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            //.environmentObject(ModelData())
    }
}
