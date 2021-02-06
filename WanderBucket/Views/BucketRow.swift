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
            Text(bucket.name)
        }
    }
}

struct BucketRow_Previews: PreviewProvider {
    static var previews: some View {
        BucketRow(bucket: buckets[0])
    }
}
