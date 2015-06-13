//
//  SecondVC.swift
//  sampleApp001
//
//  Created by Srikanth Ganji on 13/06/15.
//  Copyright (c) 2015 Srikanth Ganji. All rights reserved.
//

import UIKit

class SecondVC: HMViewController {

    var showCustomBackButton:Bool = false
    
    @IBOutlet weak var lblTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        println("showCustomBackButton: \(showCustomBackButton)")
        lblTitle.hidden = !self.navigationController!.navigationBarHidden
        if showCustomBackButton {
            let backBtn = UIBarButtonItem(image: UIImage(named: "BackBtn"), style: .Plain, target: self, action: "backBtnClicked:")
            self.navigationItem.leftBarButtonItem = backBtn
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func backBtnClicked(sender: AnyObject) {
        
        self.navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
