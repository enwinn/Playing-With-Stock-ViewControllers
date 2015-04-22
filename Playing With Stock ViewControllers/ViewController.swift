//
//  ViewController.swift
//  Playing With Stock ViewControllers
//
//  Created by Eric Winn on 4/16/15.
//  Copyright (c) 2015 Eric N. Winn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showImagePicker(){
        
        let nextController = UIImagePickerController()
        
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    @IBAction func showActivityVC() {
        let image = UIImage()
        
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func showAlert() {
        
        let controller = UIAlertController(title: "My Alert", message: "This is a pop-up alert!", preferredStyle: .Alert)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action in
            
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        controller.addAction(cancelAction)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func showActionSheet() {
        // ref: http://swiftoverload.com/uialertcontroller-swift-example/
        
        let controller = UIAlertController(title: "My Action Sheet", message: "This is an Action Sheet.", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        // Create and add the Cancel action
        //        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {action -> Void in
        //            // Just dismiss the alert
        //        })
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Default) { action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        controller.addAction(cancelAction)
        
        // Create and add the first option action
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Take Photo", style: .Default, handler: { action -> Void in
            // Code for launching camera goes here
        })
        controller.addAction(takePictureAction)
        
        // Create and add a second option
        let choosePictureAction: UIAlertAction = UIAlertAction(title: "Choose Photo", style: .Default, handler: { action -> Void in
            // Code for opening photos goes here
        })
        controller.addAction(choosePictureAction)
        
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

