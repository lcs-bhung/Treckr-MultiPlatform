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
            NavigationView{
                
            
            LocationsList(store: store)
            }
        }
    }
}
