//
//  MapView2.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/2/21.
//

import SwiftUI
import MapKit
import CoreLocation

struct Location {
    var title: String
    var latitude: Double
    var longitude: Double
}

struct GlobeView: View {
    
    //@Environment(\.colorScheme) var colorScheme
    //@EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    
    @State var locations = [
        Location(title: "San Francisco", latitude: 37.7749, longitude: -122.4194),
        Location(title: "New York", latitude: 40.7128, longitude: -74.0060)
    ]
    
    
    var body: some View {
        Globe(locations: locations)
            .navigationBarHidden(true)
    }
}
//        .navigationTitle("Your World")
//        .toolbar {
//            Button(action: { showingProfile.toggle() }) {
//                Image(systemName: "person.crop.circle")
//                .accessibilityLabel("User Profile")
//
//            }
//        }
//        .sheet(isPresented: $showingProfile) {
//            ProfileHost()
//                .environmentObject(modelData)
        //        Globe(locations: locations)
        //            //.navigationBarHidden(true)
        //            .navigationTitle("Featured")
        //            .toolbar {
        //                Button(action: { showingProfile.toggle() }) {
        //                    Image(systemName: "person.crop.circle")
        //                        .accessibilityLabel("User Profile")
        //                }
        //            }
        //            .sheet(isPresented: $showingProfile) {
        //                ProfileHost()
        //                    .environmentObject(modelData)
        //            }
                    //.edgesIgnoringSafeArea(.all


struct Globe: UIViewRepresentable {
    @State var locations: [Location]

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        // change the map type here
        mapView.mapType = .hybridFlyover
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        for location in locations {
            // make a pins
            let pin = MKPointAnnotation()
            // set the coordinates
            pin.coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            // set the title
            pin.title = location.title
            // add to map
            view.addAnnotation(pin)
            
        }
    }
}


struct GlobeView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let locations = [
            Location(title: "San Francisco", latitude: 37.7749, longitude: -122.4194),
            Location(title: "New York", latitude: 40.7128, longitude: -74.0060)
        ]
        
        Globe(locations: locations)
            .background(Color.black)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .preferredColorScheme(.dark)
            //.environmentObject(ModelData())
    }
}
