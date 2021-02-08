//
//  BucketList.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/5/21.
//


import Foundation
import SwiftUI
import CoreLocation

struct Bucket: Hashable, Codable, Identifiable {
    
    var id : Int
    var userId: Int
    var name: String
    //var country: String
    var state: String
    var city: String
    var isFavorite: Bool
    var isFeatured: Bool
    var description: String
    
    
    var country: Category
    enum Category: String, CaseIterable, Codable {
        case US  = "United States"
        case Canada = "Canada"
        case Germany = "Germany"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_featured") : nil
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }

}
