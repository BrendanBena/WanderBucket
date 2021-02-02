//
//  ContentView.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("globe")
                .padding(-22.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            Text("WanderBucket")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(10.0)

            Text("Not All Those Who Wander Are Lost...")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .previewLayout(.device)
        }
    }
}
