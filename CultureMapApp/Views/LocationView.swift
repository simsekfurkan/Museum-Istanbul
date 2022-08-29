//
//  LocationView.swift
//  CultureMapApp
//
//  Created by Onur Şimşek on 15.08.2022.
//

import SwiftUI
import MapKit

struct LocationView: View {
    @EnvironmentObject private var vm : LocationViewModel

    @State private var mapRegion : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    let maxWidthForIpad : CGFloat = 700
    var body: some View {
        ZStack{
                mapLayer
                .ignoresSafeArea()
            
            VStack(spacing:0){
                header
                    .padding()
                    .frame(maxWidth:maxWidthForIpad)
                Spacer()
                locationPreviewStack
                
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss : nil){
            location in LocationDetailView(location: location)
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}


extension LocationView{
    private var header: some View {
        VStack(spacing:0){
            VStack {
                Button(action: vm.toogleLocationsList) {
                    Text(vm.mapLocation.name + "," + vm.mapLocation.cityName)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                        .frame(height:55)
                        .frame(maxWidth:.infinity)
                        .animation(.none, value: vm.mapLocation)
                        .overlay(alignment: .leading)  {
                            Image(systemName: "arrow.down")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding()
                                .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                        }
                }
                if vm.showLocationsList{
                    LocationsListView()
                }
            }
            .background(.thickMaterial)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 1)
           
        }
    }
    
    private var mapLayer : some View{
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotionView()
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })

    }
    private var  locationPreviewStack : some View {
        ZStack{
            ForEach(vm.locations) { location in
                if vm.mapLocation == location{
                    LocationPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth:maxWidthForIpad)
                        .frame(maxWidth:.infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
               
            }
        }

    }
}
