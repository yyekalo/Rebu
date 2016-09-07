//
//  File.swift
//  RebuTestURL
//
//  Created by Yekalo Abraha on 9/6/16.
//  Copyright © 2016 Yikealo Abraha. All rights reserved.
//

import Foundation

class Event {
    
    var name: String?
    var startDate: String?
    var endDate: String?
    var longtiude: Double?
    var latitude: Double?
    
    
    
    init(name: String?,startDate: String?,endDate: String?,longtiude: Double?,latitude: Double? ){
        
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        self.latitude = latitude
        self.longtiude = longtiude
    }
    
    
}