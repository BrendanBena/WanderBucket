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
                .padding()
                
                HStack {
                    Text("Name: ").font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text((profile.name)).font(.title3)
                }
                HStack {
                    Text("From: ").font(.title3).fontWeight(.bold)
                    Spacer()
                    Text((profile.nationality)).font(.title3)
                }
                HStack {
                    Text("Age: ").font(.title3).fontWeight(.bold)
                    Spacer()
                    Text("\(profile.age)").font(.title3)
                }
                HStack {
                    Text("Email: ").font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text((profile.email)).font(.title3)
                }
                HStack {
                    Text("Gender: ").font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text((profile.gender)).font(.title3)
                }
                
                //Spacer()
                
                Text("Favorite Buckets: ")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                let buckets = ModelData().buckets
                CategoryRow(
                    categoryName: "",
                    items: Array(buckets.prefix(5))
                )
                .listRowInsets(EdgeInsets())
                .listStyle(InsetListStyle())
//                List {
//                    ForEach(modelData.countryCategories.keys.sorted(), id: \.self) { key in
//                        CategoryRow(categoryName: key, items: modelData.countryCategories[key]!)
//                    }
//                    .listRowInsets(EdgeInsets())
//                }
                
                //Spacer()
                
                Text("To-Do Buckets: ")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                CategoryRow(
                    categoryName: "",
                    items: Array(buckets.prefix(5))
                )
                .listRowInsets(EdgeInsets())
                .listStyle(InsetListStyle())
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
