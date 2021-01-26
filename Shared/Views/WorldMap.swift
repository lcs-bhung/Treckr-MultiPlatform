//
//  WorldMap.swift
//  Treckr MultiPlatform
//
//  Created by Branton Hung on 2021-01-26.
//

import MapKit
import SwiftUI

struct WorldMap: View {
    
    //Center of LCS, wide enough to show NA
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .navigationTitle("Map")
    }
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        WorldMap()
    }
}
