//
//  BucketList.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/6/21.
//

import SwiftUI

struct BucketList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    @State private var showingProfile = false
    
    var filteredBuckets: [Bucket] {
        modelData.buckets.filter { bucket in
            (!showFavoritesOnly || bucket.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredBuckets) { bucket in
                    NavigationLink(destination: BucketDetail(bucket: bucket)) {
                        BucketRow(bucket: bucket)
                    }
                }
            }
            .navigationTitle("My Bucketlist")
            .toolbar {
                Button(action: { showingProfile.toggle() }) {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

struct BucketList_Previews: PreviewProvider {
    static var previews: some View {
        
        BucketList()
            .environmentObject(ModelData())
        
        
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
//            BucketList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
    }
}
