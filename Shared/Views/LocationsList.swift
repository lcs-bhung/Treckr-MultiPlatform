//
//  LocationsList.swift
//  Treckr MultiPlatform
//
//  Created by Branton Hung on 2021-01-25.
//

import SwiftUI

struct LocationsList: View {
    
    @ObservedObject var store: LocationStore
    
    var body: some View {
        //Iterate over the list of locations in the data store
        List(store.places) { location in
         
            //Create a navigation link to the detail view
            //example of abstraction into action
            NavigationLink(destination: LocationDeatil(location: location)){
                    HStack{
                        Image(location.heroPicture)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 44, height: 44)
                        
                        VStack(alignment: .leading) {
                            Text(location.name)
                            Text(location.country)
                                .font(.subheadline)
                             
                        }
                    }
                }
            
        navigationTitle("Locations")
        }
    }
}

struct LocationsList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationsList(store: testStore)
        }
    }
}
