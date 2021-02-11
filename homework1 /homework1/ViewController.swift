//
//  ViewController.swift
//  homework1
//
//  Created by Melike Açba on 6.01.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtData1: UITextField!
    
    @IBOutlet weak var txtData2: UITextField!
    
    
    @IBAction func fncToplama(_ sender: UIButton) {
        let firstData = Double(txtData1.text!)
        let secondData = Double(txtData2.text!)
        let outputData = Double(firstData! + secondData!)
        result.text = "Toplam: \(outputData)"
    }
    
    @IBAction func fncÇıkarma(_ sender: UIButton) {
        let firstData = Double(txtData1.text!)
        let secondData = Double(txtData2.text!)
        let outputData = Double(firstData! - secondData!)
        result.text = "Fark: \(outputData)"
    }
    
    @IBAction func fncÇarpma(_ sender: UIButton) {
        let firstData = Double(txtData1.text!)
        let secondData = Double(txtData2.text!)
        let outputData = Double(firstData! * secondData!)
        result.text = "Çarpım: \(outputData)"
    }
    
    @IBAction func fncBölme(_ sender: UIButton) {
        let firstData = Double(txtData1.text!)
        let secondData = Double(txtData2.text!)
        let outputData = Double(firstData! / secondData!)
        result.text = "Bölüm: \(outputData)"
            
        }
    
    
    
    @IBOutlet weak var result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

