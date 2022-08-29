//
//  Location.swift
//  CultureMapApp
//
//  Created by Onur Şimşek on 15.08.2022.
//

import Foundation
import MapKit

struct Location : Identifiable ,Equatable{
    
    
    let name: String
    let cityName:String
    let coordinates: CLLocationCoordinate2D
    let description:String
    let imageNames: [String]
    let link: String
    let ticketLink: String
    
    var id: String {
        name + cityName
    }
//    Equatabler
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
