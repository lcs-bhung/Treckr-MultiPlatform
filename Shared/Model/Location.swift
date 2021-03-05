//
//  Location.swift
//  Treckr MultiPlatform
//
//  Created by Branton Hung on 2021-01-25.
//

import Foundation

struct Location: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    
    static let example = Location(id: 1,
                                  name: "The Highlands",
                                  description: "The Highlands is a historic region of Scotland. Culturally, the Highlands and the Lowlands diverged from the later Middle Ages into the modern period, when Lowland Scots replaced Scottish Gaelic throughout most of the Lowlands. The term is also used for the area north and west of the Highland Boundary Fault, although the exact boundaries are not clearly defined, particularly to the east. The Great Glen divides the Grampian Mountains to the southeast from the Northwest Highlands. The Scottish Gaelic name of A' Ghàidhealtachd literally means \"the place of the Gaels\" and traditionally, from a Gaelic-speaking point of view, includes both the Western Isles and the Highlands.",
                                  latitude: 57.1200,
                                  longitude: -4.7100,
                                  heroPicture: "highlands"
                                 )
                                  }
