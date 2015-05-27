//
//  ViewController.swift
//  NashNext
//
//  Created by William Judd on 5/26/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    
   
    @IBOutlet weak var myWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        let url = NSURL (string: "https://nn2.firebaseapp.com");
        let requestObj = NSURLRequest(URL: url!);
        myWebView.loadRequest(requestObj);
        myWebView.scrollView.bounces = false;

        
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("Object has been saved.")
        }
        
        
       
//        // Create a reference to a Firebase location
//        var myRootRef = Firebase(url:"https://nashnext1.firebaseio.com/")
//        // Write data to Firebase
//        myRootRef.setValue("Do you have data? You'll love Firebase.")
//        // Read data and react to changes
//        myRootRef.observeEventType(.Value, withBlock: {
//            snapshot in
//            println("\(snapshot.key) -> \(snapshot.value)")
        
        
//        })
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}

