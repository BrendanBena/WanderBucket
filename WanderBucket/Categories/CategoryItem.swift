//
//  CategoryItem.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/6/21.
//

import SwiftUI

struct CategoryItem: View {
    var bucket: Bucket

    var body: some View {
        VStack(alignment: .leading) {
            bucket.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(bucket.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(bucket: ModelData().buckets[0])
    }
}
