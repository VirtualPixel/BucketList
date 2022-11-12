//
//  Location.swift
//  BucketList
//
//  Created by Justin Wells on 11/12/22.
//

import Foundation
import MapKit

struct Location: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longtiude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longtiude)
    }
    
    static let example = Location(id: UUID(), name: "Buckingham Palace", description: "Where queen elizabeth lived with her dorgis.", latitude: 51.501, longtiude: -0.141)
    
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
