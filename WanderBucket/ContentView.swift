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
                .padding(-20.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
            Text("WanderBucket")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            Text("Not All Those Who Wander Are Lost...")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
