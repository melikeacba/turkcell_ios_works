//
//  ViewController.swift
//  homework_4
//
//  Created by Melike Açba on 22.01.2021.
//

import UIKit
import SCLAlertView

class ViewController: UIViewController {
    
    let db = DB()

    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDetail: UITextField!
    @IBAction func btnListCreate(_ sender: UIButton) {
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        let title = txtTitle.text!
        let detail = txtDetail.text!
        let row = db.productInsert(title: title, detail: detail)
        print(row)
        SCLAlertView().showTitle("Başarılı!", subTitle: "Ürünü listeye eklediniz.", timeout: nil, completeText: "Tamam", style: .success, colorStyle: 0x22B573, colorTextButton: 0xFFFFFF)}
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        db.fncConnection()
        print("Home viewDidLoad Call")

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        print("Home viewDidAppear Call")
    }
    


}


