//
//  Tip.swift
//  Treckr MultiPlatform
//
//  Created by Branton Hung on 2021-01-26.
//

import Foundation

struct Tip: Decodable{
    let text: String
    let children: [Tip]?
}
