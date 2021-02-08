//
//  CategoryRow.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/6/21.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Bucket]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { bucket in
                        NavigationLink(destination: BucketDetail(bucket: bucket)) {
                            CategoryItem(bucket: bucket)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var buckets = ModelData().buckets

    static var previews: some View {
        CategoryRow(
            categoryName: buckets[0].country.rawValue,
            items: Array(buckets.prefix(4))
        )
    }
}
