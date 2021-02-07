//
//  BucketDetail.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/6/21.
//

import SwiftUI

struct BucketDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    var bucket: Bucket

    var bucketIndex: Int {
        modelData.buckets.firstIndex(where: { $0.id == bucket.id })!
    }
    
    var body: some View {
            VStack(alignment: .leading) {
                HStack{
                    Text(bucket.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.buckets[bucketIndex].isFavorite)

                }

                HStack {
                    Text(bucket.description)
                    Spacer()
                    Text(bucket.state.rawValue)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(bucket.name)")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()

            Spacer()
    }
}

struct BucketDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        BucketDetail(bucket: modelData.buckets[0])
            .environmentObject(modelData)
    }
}
