//
//  LocationDeatil.swift
//  Treckr MultiPlatform
//
//  Created by Branton Hung on 2021-01-25.
//

import SwiftUI



struct LocationDeatil: View {
    
    
    //The location to show heroPicture
    //A copy of an instance of a structure will be provided in this view
    let location: Location
    
    
    var body: some View {
        
        
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
            
            Text(location.name)
            font(.title)
            .foregroundColor(.secondary)
            .padding(.bottom)
            
            Spacer()
            }
            padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
//            HStack{
//
//                Text("Did you know?")
//                    .font(.title3)
//                    .bold()
//                    .padding(.vertical)
//
//                Spacer()
//
//            }
            padding(.horizontal)
            
    
            
//            if !location.advisory.isEmpty{
//                HStack{
//                    Text("Advisory")
//                        .font(.title3)
//                        .bold()
//                        .padding(.vertical)
//
//                    Spacer()
//                }
//                .padding(.horizontal)
//
//                Text(location.advisory)
//                    .padding([.horizontal, .bottom])
//
//            } else {
//
//                Text(location.more)
//                    .padding([.horizontal, .bottom])
//
//            }
            
        }
        
        navigationTitle(location.name)
    }
}

struct LocationDeatil_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            LocationDeatil(location: testStore.places[1])
            
        }
    }
}
