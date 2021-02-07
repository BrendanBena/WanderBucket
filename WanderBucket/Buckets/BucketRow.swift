//
//  BucketRow.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/6/21.
//

import SwiftUI

struct BucketRow: View {
    var bucket: Bucket

    var body: some View {
        HStack {
            bucket.image
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading){
                Text(bucket.name)
                    .font(.headline)
                    //.multilineTextAlignment(.leading)
                    
                
                Text(bucket.description)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                
            }
            Spacer()
            
            if bucket.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct BucketRow_Previews: PreviewProvider {
    
    static var buckets = ModelData().buckets
    
    static var previews: some View {
        Group {
            BucketRow(bucket: buckets[0])
            BucketRow(bucket: buckets[1])
        }
    }
}
