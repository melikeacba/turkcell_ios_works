//
//  HomeController.swift
//  Homework_3S
//
//  Created by Melike Açba on 24.01.2021.
//

import UIKit

class HomeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    var stArr:[Meyveler] = []
    let arr = ["Elma", "Armut", "Çilek", "Muz", "Portakal"]
    var selectResim = ""
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDetail: UITextView!
    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBAction func btnTableCreate(_ sender: UIButton) {
        performSegue(withIdentifier: "list", sender: stArr)
    }
    @IBAction func btnAdd(_ sender: UIButton) {
        let title = txtTitle.text!
        let detail = txtDetail.text!
        let price = txtPrice.text!
        var meyve = Meyveler()
        meyve.resim = UIImage(imageLiteralResourceName: selectResim)
        meyve.title = title
        meyve.detail = detail
        meyve.price = price
        
        stArr.append(meyve)
        
        print(stArr)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let item = arr[row]
        selectResim = item
        print(item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if ( segue.identifier == "list" ) {
            let fnl = segue.destination as! ProductTableView
            fnl.stArr = sender as! [Meyveler]
        }


}

}
