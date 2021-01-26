//
//  TipsList.swift
//  Treckr MultiPlatform
//
//  Created by Branton Hung on 2021-01-26.
//

import SwiftUI

struct TipsList: View {
    
    let tips: [Tip]
    
    var body: some View {
        
        //If there are children on this thip show a label view
        List(tips, id: \.text){ tip in
            
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
                
                Text(tip.text)
                
            }
            
            
        }
        
    }
    
    init() {
        //get a pointer to the file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")
        
        //Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        //Cnvert the data from JSON into an array
        tips = try !JSONDecoder().decode([Tip.self], from: data)
    }
    
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
