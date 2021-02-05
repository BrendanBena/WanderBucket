//
//  MapView2.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/2/21.
//

import SwiftUI
import MapKit

struct GlobeView: View {
    var body: some View {
        VStack {
            Globe()
        }.navigationBarHidden(true)
    }
}


struct Globe: UIViewRepresentable {

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        // change the map type here
        mapView.mapType = .hybridFlyover
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let bucket = MKAnnotationView()
        bucket.image = UIImage(named: "WanderBucket-LogoBlackWhite")
        
    }
}

struct GlobeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Globe()
        }
        .preferredColorScheme(.dark)
    }
}




/////////////////////////////////// OLD ///////////////////////////////////////
//
//  MapView2.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/2/21.
//
//
//import SwiftUI
//import MapKit
//
//struct Location {
//    var title: String
//    var latitude: Double
//    var longitude: Double
//}
//
//struct GlobeView: View {
//    // add locations here
//    @State var locations = [
//        Location(title: "San Francisco", latitude: 37.7749, longitude: -122.4194),
//        Location(title: "New York", latitude: 40.7128, longitude: -74.0060)
//    ]
//
//    var body: some View {
//        //MapView(locations: locations)
//        Globe(locations: locations)
//    }
//}
//
//
//struct Globe: UIViewRepresentable {
//    @State var locations: [Location]
//
//    func makeUIView(context: Context) -> MKMapView {
//        let mapView = MKMapView(frame: .zero)
//        // change the map type here
//        mapView.mapType = .hybridFlyover
//
//        return mapView
//    }
//
//    func updateUIView(_ view: MKMapView, context: Context) {
//        for location in locations {
//            // make a pins
//            let bucket = MKAnnotationView()
//            bucket.image = UIImage(named: "WanderBucket-LogoBlackWhite")
//            //bucket.glyphImage = UIImage(named: "WanderBucket-LogoBlackWhite")
//
//            //bucket.glyphImage(bucketImage)
//            //view.addAnnotation(bucket)
//        }
//    }
//            //bucket.image = BucketImage()
//
////            // set the coordinates
////            bucket.coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
////
////            // set the title
////            bucket.title = location.title
////
////            // add to map
////            view.addAnnotation(bucket)
//
////    func updateUIView(_ view: MKMapView, context: Context) {
////        for location in locations {
////            // make a pins
////            let pin = MKPointAnnotation()
////
////            // set the coordinates
////            pin.coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
////
////            // set the title
////            pin.title = location.title
////
////            // add to map
////            view.addAnnotation(pin)
////        }
////    }
//}
//
//struct GlobeView_Previews: PreviewProvider {
//    static var previews: some View {
//        let locations = [
//            Location(title: "San Francisco", latitude: 37.7749, longitude: -122.4194),
//            Location(title: "New York", latitude: 40.7128, longitude: -74.0060)
//        ]
//        Group {
//            Globe(locations: locations)
//        }
//    }
//}
