//
//  Treckr_MultiPlatformApp.swift
//  Shared
//
//  Created by Branton Hung on 2021-01-25.
//

import SwiftUI

@main
struct Treckr_MultiPlatformApp: App {
    
    @StateObject var store = LocationStore()
    
    
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                NavigationView{
                    
                LocationsList(store: store)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                NavigationView{
                    WorldMap(store: store)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
               
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
                
            }
        }
    }
}
