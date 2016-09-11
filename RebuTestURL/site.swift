//
//  site.swift
//  RebuTestURL
//
//  Created by Yekalo Abraha on 9/11/16.
//  Copyright © 2016 Yikealo Abraha. All rights reserved.
//

import Foundation
import MapKit


class site: NSObject, MKAnnotation {
    
    let coordinate : CLLocationCoordinate2D
    
    let title : String?
    
    init(coordinate : CLLocationCoordinate2D,title : String?) {
        self.coordinate = coordinate
        self.title = title
    }
}



