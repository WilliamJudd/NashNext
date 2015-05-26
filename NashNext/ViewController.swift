//
//  ViewController.swift
//  NashNext
//
//  Created by William Judd on 5/26/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weatherLabel: UILabel!
    
    
    @IBOutlet weak var buttonSunny: UIButton!
    
    
    @IBOutlet weak var buttonFoggy: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        
        
        
        
       
        // Create a reference to a Firebase location
        var myRootRef = Firebase(url:"https://nashnext1.firebaseio.com/")
        // Write data to Firebase
        myRootRef.setValue("Do you have data? You'll love Firebase.")
        // Read data and react to changes
        myRootRef.observeEventType(.Value, withBlock: {
            snapshot in
            println("\(snapshot.key) -> \(snapshot.value)")
            self.weatherLabel.text = snapshot.value! as? String 
            
        
        
        })
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

