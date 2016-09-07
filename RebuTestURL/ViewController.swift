//
//  ViewController.swift
//  RebuTestURL
//
//  Created by Yekalo Abraha on 9/3/16.
//  Copyright © 2016 Yikealo Abraha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var temp : String!
    
    var events = Events()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        
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
    
    

}