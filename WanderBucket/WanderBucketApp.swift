//
//  WanderBucketApp.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/2/21.
//

import SwiftUI

@main
struct WanderBucketApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            //LoginScreen()
                .environmentObject(modelData)
        }
    }
}
