//
//  AttractionTableData.swift
//  TableTesting
//
//  Created by Byrdann Fox on 3/17/15.
//  Copyright (c) 2015 lycan.io. All rights reserved.
//

import Foundation

class AttractionTableData {
    
    var attractionImages = [String]()
    var attractionNames = [String]()
    var webAddresses = [String]()
    
    func getAttractionNames() -> Array<String> {
    
        // ...
        
        attractionNames = ["Buckingham Palace", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
        
        return attractionNames
        
    }
    
    func getAttractionImages() -> Array<String> {
        
        // ...
        
        attractionImages = [
            
            "buckingham_palace.jpg",
            
            "eiffel_tower.jpg",
            
            "grand_canyon.jpg",
            
            "windsor_castle.jpg",
            
            "empire_state_building.jpg"
            
        ]
        
        return attractionImages
        
    }
    
    func getWebAddresses() -> Array<String> {
        
        // ...
        
        webAddresses = [
            
            "http://en.wikipedia.org/wiki/Buckingham_Palace",
            
            "http://en.wikipedia.org/wiki/Eiffel_Tower",
            
            "http://en.wikipedia.org/wiki/Grand_Canyon",
            
            "http://en.wikipedia.org/wiki/Windsor_Castle",
            
            "http://en.wikipedia.org/wiki/Empire_State_Building"
            
        ]
        
        return webAddresses
        
    }
    
    func getAttractionCount() -> Int {
        
        return 5
        
    }
    
}