//
//  ViewController.swift
//  1-Start
//
//  Created by Melike Açba on 29.12.2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func fncSendData(_ sender: UIButton) {
        sender.backgroundColor = .red
        sender.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        print("fncSendData Call")
        
        
    }
    
    @IBAction func fncDateSelect(_ sender: UIDatePicker) {
        print(sender.date)
    }
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("Hello Swift")
        // Do any additional setup after loading the view.
    }


}

