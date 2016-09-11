//
//  ViewController.swift
//  RebuTestURL
//
//  Created by Yekalo Abraha on 9/3/16.
//  Copyright © 2016 Yikealo Abraha. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
    var temp : String!
    
    var events = Events()

    var sites = [site]()
    
     @IBOutlet var MapView: MKMapView!
    
    func loadsite(){
        
        for event in self.events.Events{
            
           let lon = event.longtiude! as CLLocationDegrees
                
            let lat = event.latitude! as CLLocationDegrees
            
            let cor = CLLocationCoordinate2DMake(lat, lon)
            
            sites.append(site(coordinate: cor,title : nil))
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let intialLocation = CLLocation(latitude: (events.Events[1].latitude! as CLLocationDegrees), longitude: (events.Events[1].longtiude! as CLLocationDegrees))
      
        let distance : CLLocationDistance = 1000
        
        let region = MKCoordinateRegionMakeWithDistance(intialLocation.coordinate,
            distance * 4.0, distance * 4.0)
        
        MapView.setRegion(region, animated: true)
        
        MapView.delegate = self
        
        loadsite()
        
        MapView.addAnnotations(sites)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBOutlet var TextField: UITextView!
    
   
    
    
    @IBAction func Run(sender: UIButton) {
        
      
        
      

        
        
    }
 
    @IBAction func SecondRun(sender: UIButton) {
       
        for event in events.Events{
            
            self.TextField.text = self.TextField.text + String(event.longtiude) + "What"
            
        }
        
      
        
        
    }
    
    
    
    
    func mapView(mapView: MKMapView,
        viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView! {
            if let annotation = annotation as? site {
                let identifier = "pin"
                var view: MKPinAnnotationView
                if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
                    as? MKPinAnnotationView { // 2
                        dequeuedView.annotation = annotation
                        view = dequeuedView
                } else {
                    // 3
                    view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                    view.canShowCallout = true
                    view.calloutOffset = CGPoint(x: -5, y: 5)
                    view.rightCalloutAccessoryView = UIButton(type: .DetailDisclosure) as UIView
                }
                
                
                
                return view
            }
            return nil
    }
    

    
    
    

}