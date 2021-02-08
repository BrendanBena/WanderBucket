//
//  ProfileSummary.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/5/21.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                HStack(alignment: .center){
                    ProfilePicture(image: profile.picture)
                    Text(profile.username)
                        .fontWeight(.black)
                    .bold()
                        .font(.largeTitle)
                }
                
                Spacer()
                
                Text("Name: ").font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/) + Text((profile.name)).font(.title3)
                Text("From: ").font(.title3).fontWeight(.bold) + Text((profile.nationality)).font(.title3)
                Text("Age: ").font(.title3).fontWeight(.bold) + Text("\(profile.age)").font(.title3)
                Text("Email: ").font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/) + Text((profile.email)).font(.title3)
                
                
//                Text("From: \(profile.nationality)")
//                    .font(.title3)
//                    .fontWeight(.medium)
//
//                Text("Age:  \(profile.age)")
//                    .font(.title3)
//                    .fontWeight(.medium)
//
//                Text("Email:  \(profile.email)")
//                    .font(.title3)
//                    .fontWeight(.medium)
                
                Spacer()
                
                Text("Favorite Buckets: ")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                // 
                
                Spacer()
                
                Text("To-Do Buckets: ")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding()
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
