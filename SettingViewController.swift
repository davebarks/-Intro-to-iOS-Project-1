//
//  SettingViewController.swift
//  Tippy
//
//  Created by DaveBarks on 12/30/15.
//  Copyright © 2015 davidpark. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var lowTextField: UITextField!
    @IBOutlet weak var medTextField: UITextField!
    @IBOutlet weak var highTextField: UITextField!
    
    @IBOutlet weak var lowLabel: UILabel!
    @IBOutlet weak var medLabel: UILabel!
    @IBOutlet weak var highLabel: UILabel!
    
    class var sharedInstance: SettingViewController {
        struct Static {
            static var instance: SettingViewController?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = SettingViewController()
        }
        
        return Static.instance!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func lowFieldChanged(sender: AnyObject) {
        let lowPercentage = NSString(string: lowTextField.text!).integerValue
        tipPercentages[0] = Double(lowPercentage) / 100
        lowLabel.text = "Decent (\(lowPercentage)%)"
    }
    
    @IBAction func medFieldChanged(sender: AnyObject) {
        let medPercentage = NSString(string: medTextField.text!).integerValue
        tipPercentages[1] = Double(medPercentage) / 100
        medLabel.text = "Good (\(medPercentage)%)"
    }
    
    @IBAction func highFieldChanged(sender: AnyObject) {
        let highPercentage = NSString(string: highTextField.text!).integerValue
        tipPercentages[2] = Double(highPercentage) / 100
        highLabel.text = "Great (\(highPercentage)%)"
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
