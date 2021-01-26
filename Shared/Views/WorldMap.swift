//
//  WorldMap.swift
//  Treckr MultiPlatform
//
//  Created by Branton Hung on 2021-01-26.
//

import MapKit
import SwiftUI

struct WorldMap: View {
    
    //Get a refrence to the location store
    @ObservedObject var store: LocationStore
    
    
    //Center of LCS, wide enough to show NA
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: store.places){
            location in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                
                Image(location.country)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width:80, height: 40)
                    .shadow(radius: 3)
                
            }
            
        }
            .navigationTitle("Map")
    }
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        WorldMap(store: testStore)
    }
}
