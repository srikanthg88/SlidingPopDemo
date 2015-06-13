//
//  FirstVC.swift
//  sampleApp001
//
//  Created by Srikanth Ganji on 13/06/15.
//  Copyright (c) 2015 Srikanth Ganji. All rights reserved.
//

import UIKit

class FirstVC: HMViewController {

    @IBOutlet weak var swtNavBar: UISwitch!
    @IBOutlet weak var swtCustomBack: UISwitch!
    @IBOutlet weak var lblTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblTitle.hidden = swtNavBar.on
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        
        self.navigationController?.interactivePopGestureRecognizer?.enabled = false
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
        
    }
    
    @IBAction func navigationBarModeChanged(sender: AnyObject) {
        
        self.navigationController?.navigationBarHidden = !swtNavBar.on
        swtCustomBack.enabled = swtNavBar.on
        lblTitle.hidden = swtNavBar.on
    }
    
    @IBAction func navBackBtnModeChanged(sender: AnyObject) {
        
    }
    
    override func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        println("In func \(__FILE__) - \(__FUNCTION__)")
        return false
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "SecondVC" {
            let secondVC: SecondVC = segue.destinationViewController as! SecondVC
            secondVC.showCustomBackButton = swtCustomBack.on
            
        }
        
    }
    

}
