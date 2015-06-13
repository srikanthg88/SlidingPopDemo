//
//  HMViewController.swift
//  sampleApp001
//
//  Created by Srikanth Ganji on 13/06/15.
//  Copyright (c) 2015 Srikanth Ganji. All rights reserved.
//

import UIKit

class HMViewController: UIViewController,UIGestureRecognizerDelegate {
    
    deinit {
        // perform the deinitialization
        println("deinit: \(self)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        //        println("In func \(__FILE__) - \(__FUNCTION__)")
        self.navigationController?.interactivePopGestureRecognizer?.enabled = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        
    }
    
    
    func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        if self.navigationController?.interactivePopGestureRecognizer == gestureRecognizer {
            return true
            
        }
        else {
            
            return false
        }
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        //        println("In func \(__FILE__) - \(__FUNCTION__)")
        
        return true
    }
    

}
