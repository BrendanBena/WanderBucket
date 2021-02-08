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
                bucket.image
                    .resizable()
                    .frame(height: 200)
                HStack{
                    Text(bucket.name)
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.buckets[bucketIndex].isFavorite)

                }

                HStack {
                    Text("\(bucket.city), \(bucket.state)")
                    Spacer()
                    Text(bucket.country.rawValue)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("\(bucket.name) To Do's")
                    .font(.title2)
                Text("\(bucket.description)")
                    .font(.subheadline)
                
                List {
                    
                    HStack{
                        Image(systemName: "checkmark.square")
                        Text("Swim")
                    }
                    HStack{
                        Image(systemName: "checkmark.square")
                        Text("Bike")
                    }
                    HStack{
                        Image(systemName: "checkmark.square")
                        Text("Run")
                    }
                    HStack{
                        Image(systemName: "square")
                        Text("Eat")
                    }
                    HStack{
                        Image(systemName: "square")
                        Text("Party")
                    }
                    HStack{
                        Image(systemName: "square")
                        Text("Sleep")
                    }
                }
                
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
