//
//  LocationViewModel.swift
//  CultureMapApp
//
//  Created by Onur Şimşek on 15.08.2022.
//

import Foundation
import MapKit
import SwiftUI


class LocationViewModel: ObservableObject {
   
    
    @Published var locations : [Location]
    
//    Current location on the map
    @Published var mapLocation: Location{
        didSet{
            updateMapRegion(location: mapLocation)
        }
    }
//    Current region on the map
    @Published var mapRegion : MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    @Published var showLocationsList : Bool = false
    
//    Show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location){
        withAnimation(.easeInOut){
            mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
}
    }
    
     func toogleLocationsList(){
        withAnimation(.easeInOut){
            showLocationsList = !showLocationsList
        }
    }



func showNextLocation(location : Location){
    withAnimation(.easeInOut){
        mapLocation = location
        showLocationsList = false
        }
    }

    func nextButtonPressed()  {
//        get the current index
       
        
        guard let currentIndex = locations.firstIndex (where : { $0 == mapLocation} ) else {
            print("Could not find current index in locations array! Should never happen.")
            return
        }
        
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
//            next index is not valid
//            restart from 0
            guard let firstLocation = locations.first else {return}
            showNextLocation(location: firstLocation)
            return
        }
//        Next index is valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }

}

