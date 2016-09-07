//
//  Events.swift
//  RebuTestURL
//
//  Created by Yekalo Abraha on 9/6/16.
//  Copyright © 2016 Yikealo Abraha. All rights reserved.
//

import Foundation


class Events {
    
    var Events = [Event]()
    
    func updateEvents(data: NSData?){
        
        do
        {
            if let data = data, locations = try NSJSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions(rawValue:0)) as? [AnyObject] {
                
              
                
                
                    
                    for location in locations as! [AnyObject] {
                        
                        print(location["latitude"] as! Double)
                        
                
                
                }
        }
        }
        catch let error as NSError {
            print("Error parsing results: \(error.localizedDescription)")
        }
        catch{
            print("i dont know")
        }
        
        
    }
        



    
    init()
    {
        
        let url = NSURL(string: "http://127.0.0.1:5000/api/v1.0/locations")
        
        let defaultSession = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        // 2
        var dataTask: NSURLSessionDataTask?
        
        dataTask = defaultSession.dataTaskWithURL(url!) {
            data, response, error in
            
            
            
            if let error = error {
                print(error.localizedDescription)
            } else if let httpResponse = response as? NSHTTPURLResponse {
                if httpResponse.statusCode == 200 {
                    self.updateEvents(data!)
                }
            }
        }
        
        
        dataTask?.resume()
}


}




