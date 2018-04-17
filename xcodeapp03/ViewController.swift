//
//  ViewController.swift
//  xcodeapp03
//
//  Created by stoller on 2018/4/10.
//  Copyright © 2018年 hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBOutlet weak var bearColorView: UIImageView!
    @IBOutlet weak var bearView: UIImageView!
    @IBAction func colorValueChange(_ sender: Any) {
         bearColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBAction func colorswitch(_ sender: UISwitch) {
        
        if sender == redSwitch {
        
        if redSwitch.isOn == false {
            redSlider.isEnabled = false
        }
        else {
            redSlider.isEnabled = true
        }
        }
         else if sender == greenSwitch {
        
        if greenSwitch.isOn == false {
            greenSlider.isEnabled = false
        }
            else {
            greenSlider.isEnabled = true
        }
    }
        else if sender == blueSwitch
        {
        if blueSwitch.isOn == false {
            blueSlider.isEnabled = false
        }
        else {
            blueSlider.isEnabled = true
        }

    }
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

