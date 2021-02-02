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
            Text("WanderBucket")
                .font(.title)
                .padding()
            Text("Not All Those Who Wander Are Lost...")
                .font(.subheadline)
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
