//
//  ContentView.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/6/21.
//

import SwiftUI

struct ContentView: View {

    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
        case map
    }

    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Buckets", systemImage: "star.fill")
                }
                .tag(Tab.featured)
            GlobeView()
                .tabItem {
                    //Image(systemName: "home")
                    //Text("World")
                    Label("World", systemImage: "homekit")
                }
                .tag(Tab.map)
            BucketList()
                .tabItem {
                    Label("BucketList", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .environmentObject(ModelData())
    }
}
