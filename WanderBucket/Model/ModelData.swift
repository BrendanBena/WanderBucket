/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Storage for model data.
*/

import Foundation
import Combine


final class ModelData: ObservableObject {
    @Published var buckets: [Bucket] = load("bucketData.json")
    
    var stateCategories: [String: [Bucket]] {
        Dictionary(
            grouping: buckets,
            by: { $0.state.rawValue }
        )
    }
    
    var features: [Bucket] {
        buckets.filter { $0.isFeatured }
    }
}


//    @Published var buckets: [Bucket] = load("BucketList.json")
//    @Published var profile = Profile.default
//var buckets: [Bucket] = load("bucketData.json")
//var buckets: [Bucket] = load("BucketList.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
