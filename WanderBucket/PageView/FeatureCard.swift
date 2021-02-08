//
//  FeatureCard.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/7/21.
//

import SwiftUI

struct FeatureCard: View {
    var bucket: Bucket

    var body: some View {
        bucket.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay(TextOverlay(bucket: bucket))
    }
}

struct TextOverlay: View {
    var bucket: Bucket

    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            VStack(alignment: .leading) {
                Text(bucket.name)
                    .font(.title)
                    .bold()
                Text(bucket.city + ", " + bucket.country.rawValue)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(bucket: ModelData().features[0])
    }
}
