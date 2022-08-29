//
//  LocationDetailView.swift
//  CultureMapApp
//
//  Created by Onur Şimşek on 18.08.2022.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject private var vm:LocationViewModel
    
    let location : Location
    var body: some View {
        ScrollView{
            VStack{
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16.0){
                    
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                }
                .frame(maxWidth:.infinity, alignment: .leading)
                .padding()
                
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton,alignment: .topLeading)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationViewModel())
    }
}

extension LocationDetailView{
    
    private var imageSection: some View{
        
        TabView {
            ForEach(location.imageNames, id: \.self) {
                    Image($0)
                    .resizable()
                    .clipped()
                    .scaledToFit()
                    .frame(width:UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .frame(height:UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.height)
                
                    


                    
            }
        }
        .frame(height:380)
        .tabViewStyle(PageTabViewStyle())
        
    }
    
    private var titleSection : some View{
        VStack(alignment: .leading, spacing: 8.0){
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            HStack {
                Text(location.cityName)
                    .font(.title3)
                .foregroundColor(.secondary)
                Spacer()
                Button(action: {
                            
                    if let yourURL = URL(string: location.ticketLink) {
                            UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                        }
                        }) {
                            
                            Text("Buy Ticket").font(.body)
                            Image(systemName: "ticket.fill")
                                .foregroundColor(.red)
                                
                               
                            
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(16)
                        .frame( alignment: .trailing)
            }
            
        }
    }
    
    private var descriptionSection : some View{
        VStack(alignment: .leading, spacing: 8.0){
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
         if  let url = URL(string: location.link){
             Link("For more details",destination: url)
            .font(.headline)
            .tint(.blue)}
            
        }
    }
    
    private var mapLayer : some View{
        
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: location.coordinates,
                                                           span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotionView()
                    .shadow(radius: 10)
            }
        }
            .allowsHitTesting(false)
            .aspectRatio(1,contentMode: .fit)
            .cornerRadius(30)

    }
    
    private var backButton : some View{
        
        Button {
            vm.sheetLocation = nil
            
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding()
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }

    }
    
    
}
