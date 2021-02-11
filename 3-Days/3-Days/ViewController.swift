//
//  ViewController.swift
//  3-Days
//
//  Created by Melike Açba on 7.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtSurname: UITextField!
    @IBOutlet weak var lblName: UILabel!
    @IBAction func btnCall(_ sender: UIButton) {
        
        let name = txtName.text!
        let surname = txtSurname.text!
        let util = Util()
        let st = util.stringConcat(name: name, surname: surname)
        lblName.text = st
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // object -> new
        //Util ut = new Util()
        let util = Util()
        print(util.name)
    
        //noParameter Call
        util.noParameter()
        
        //parameter Call
        util.parameter(num1: 80, num2: 90)
        
        //returnPArameter Call
        let sm = util.parameterReturn(num1: 10, num2: 90)
        if (sm > 150) {
            print("Sm : ", sm)
        }else {
            print("Sum 150 !")
        }
        
        
        //parameterReturns
        let fnc = util.parameterReturns(num1: 80, num2: 90)
        print(fnc.0)
        print(fnc.1)
        
        //var -> Name
        print("===========================")
        print(util.name)
        util.name = "Ahmet"
        print(util.name)
        
        let utilx = Util()
        print(utilx.name)
        
        let st = Settings(name: "Mehmet", number: 50)
        st.call()
        
        
        var dic = [ "name": "Zehra", "surname": "Bilmem" ]
        //add item
        dic["age"] = "35"
        dic["age"] = "36"
        dic["mail"] = "zehra@mail.com"
        dic["city"] = "Ankara"
        
        //delet item
        dic.removeValue(forKey: "mail")
        
        //all key and item data
        for (key, value) in dic{
            print(key, value)
            
        //all key and item data (ayni seydir usttekiyle)
            //for (item) in dic{
               //print(item)
        }
        
        print(dic)
        
        
        var dicx = [EUser.name: "Ayşe", EUser.surname:"Bilsin" ]
        dicx[EUser.mail] = "ayse@mail.com"
        dicx[EUser.city] = "Istanbul"
        dicx[EUser.age] = "30"
        
        
        print(dicx[EUser.name]!)
        
        
        print(dicx)
        
    
        
    }


}

